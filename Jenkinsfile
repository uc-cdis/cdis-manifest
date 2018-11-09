#!groovy

@NonCPS
def isProduction(filePath) {
  String[] prodDomains = ["nci-crdc", "nci-crdc-staging", "nci-crdc-demo", "bloodpac", "braincommons", "kidsfirstdrc", "niaid", "dcp.bionimbus"]
  prodDomains.each { item ->
    if (filePath.contains(${item})) {
      return true
    }
  }
  return false
}

pipeline {
  agent any

  stages {
    stage('FetchCode') {
      steps {
        dir('cdis-manifest') {
          // checkout this branch
          checkout scm
        }
        dir('cdis-manifest-master') {
          // checkout master branch of cdis-manifest - used for comparing files to determine if a manifest was edited
          git(
            url: 'https://github.com/uc-cdis/cdis-manifest.git',
            branch: 'master'
          )
        }
        dir('gen3-qa') {
          git(
            url: 'https://github.com/uc-cdis/gen3-qa.git',
            branch: 'master'
          )
        }
        dir('gitops-qa') {
          git(
            url: 'https://github.com/uc-cdis/gitops-qa.git',
            branch: 'master'
          )
        }
        dir('cloud-automation') {
          git(
            url: 'https://github.com/uc-cdis/cloud-automation.git',
            branch: 'master'
          )
        }
        dir('data-simulator') {
          git(
            url: 'https://github.com/occ-data/data-simulator.git',
            branch: 'master'
          )
        }
      }
    }
    stage('DetectChanges') {
      steps {
        script {
          env.ABORT_SUCCESS = 'true'
          env.KUBECTL_NAMESPACE = 'qa-bloodpac'

          // get all paths to commons manifests
          def manifestFiles = findFiles(glob: 'cdis-manifest/*/manifest.json')
          for (int i = 0; i < manifestFiles.length; i++) {
            // check if master branch also has the manifest
            def master_path = manifestFiles[i].path.replaceAll('cdis-manifest', 'cdis-manifest-master')
            if (fileExists(master_path) && isProduction(manifestFiles[i].path)) {
              // check if the manifest files are the same
              def cmpRes = sh( script: "cmp ${manifestFiles[i].path} ${master_path} || true", returnStdout: true )
              // if the comparison result is not empty then the files are different, use this manifest for testing!
              if (cmpRes != '') {
                env.ABORT_SUCCESS = 'false'
                env.AFFECTED_PATH = manifestFiles[i].path.replaceAll('cdis-manifest/', '')
                env.KUBECTL_NAMESPACE = 'default'
                break
              }
            }
          }
        }
      }
    }
    stage('SubstituteManifest') {
      when {
        environment name: 'ABORT_SUCCESS', value: 'false'
      }
      steps {
        script {
          dirname = sh(script: "kubectl -n $env.KUBECTL_NAMESPACE get configmap global -o jsonpath='{.data.hostname}'", returnStdout: true)
        }
        dir('cdis-manifest') {
          withEnv(["fromPath=$env.AFFECTED_PATH", "toPath=$dirname/manifest.json"]) {
            sh "mkdir -p $dirname"
            sh "cp $env.fromPath $env.toPath"
          }
        }    
      }
    }
    stage('K8sDeploy') {
      when {
        environment name: 'ABORT_SUCCESS', value: 'false'
      }
      steps {
        withEnv(['GEN3_NOPROXY=true', "vpc_name=$env.KUBECTL_NAMESPACE", "GEN3_HOME=$env.WORKSPACE/cloud-automation"]) {
          echo "GEN3_HOME is $env.GEN3_HOME"
          echo "GIT_BRANCH is $env.GIT_BRANCH"
          echo "GIT_COMMIT is $env.GIT_COMMIT"
          echo "KUBECTL_NAMESPACE is $env.KUBECTL_NAMESPACE"
          echo "WORKSPACE is $env.WORKSPACE"
          sh "bash cloud-automation/gen3/bin/kube-roll-all.sh"
          sh "bash cloud-automation/gen3/bin/kube-wait4-pods.sh || true"
        }
      }
    }
    stage('RunTests') {
      when {
        environment name: 'ABORT_SUCCESS', value: 'false'
      }
      steps {
        dir('gen3-qa') {
          withEnv(['GEN3_NOPROXY=true', "vpc_name=$env.KUBECTL_NAMESPACE", "GEN3_HOME=$env.WORKSPACE/cloud-automation", "NAMESPACE=$env.KUBECTL_NAMESPACE", "TEST_DATA_PATH=$env.WORKSPACE/testData/"]) {
            sh "bash ./jenkins-simulate-data.sh $env.KUBECTL_NAMESPACE"
            sh "bash ./run-tests.sh $env.KUBECTL_NAMESPACE"
          }
        }
      }
    }
  }
    
  post {
    success {
      echo "https://jenkins.planx-pla.net/ $env.JOB_NAME pipeline succeeded"
    }
    failure {
      echo "Failure!"
      archiveArtifacts artifacts: '**/output/*.png', fingerprint: true
      junit "gen3-qa/output/*.xml"
      //slackSend color: 'bad', message: "https://jenkins.planx-pla.net $env.JOB_NAME pipeline failed"
    }
    unstable {
      echo "Unstable!"
      //slackSend color: 'bad', message: "https://jenkins.planx-pla.net $env.JOB_NAME pipeline unstable"
    }
    always {
      echo "done"
    }
  }
}