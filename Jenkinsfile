#!groovy

pipeline {
  agent any

  stages {
    stage('FetchCode') {
      steps {
        dir('cdis-manifest') {
          checkout scm
        }
        dir('gen3-qa') {
          git(
            url: 'https://github.com/uc-cdis/gen3-qa.git',
            branch: 'master'
          )
        }
        dir('cloud-automation') {
          git(
            url: 'https://github.com/uc-cdis/cloud-automation.git',
            branch: 'master'
          )
        }
      }
    }
    stage('DetectChanges') {
      steps {
        script {
          def changeLogSets = currentBuild.changeSets
          for (int i = 0; i < changeLogSets.size(); i++) {
            def entries = changeLogSets[i].items
            for (int j = 0; j < entries.length; j++) {
              def affectedPaths = entries[j].getAffectedPaths()
              env.ABORT_SUCCESS = 'false';
              env.KUBECTL_NAMESPACE = 'qa-bloodpac'
              if (affectedPaths.contains('nci-crdc.datacommons.io/manifest.json')) {
                env.AFFECTED_PATH = 'nci-crdc.datacommons.io/manifest.json'
                env.KUBECTL_NAMESPACE = 'default'
              } else if (affectedPaths.contains('nci-crdc-staging.datacommons.io/manifest.json')) {
                env.AFFECTED_PATH = 'nci-crdc-staging.datacommons.io/manifest.json'
                env.KUBECTL_NAMESPACE = 'default'
              } else if (affectedPaths.contains('nci-crdc-demo.datacommons.io/manifest.json')) {
                env.AFFECTED_PATH = 'nci-crdc-demo.datacommons.io/manifest.json'
                env.KUBECTL_NAMESPACE = 'default'
              } else if (affectedPaths.contains('data.bloodpac.org/manifest.json')) {
                env.AFFECTED_PATH = 'data.bloodpac.org/manifest.json'
              } else if (affectedPaths.contains('data.braincommons.org/manifest.json')) {
                env.AFFECTED_PATH = 'data.braincommons.org/manifest.json'
                env.KUBECTL_NAMESPACE = 'qa-brain'
              } else if (affectedPaths.contains('data.kidsfirstdrc.org/manifest.json')) {
                env.AFFECTED_PATH = 'data.kidsfirstdrc.org/manifest.json'                
                env.KUBECTL_NAMESPACE = 'qa-kidsfirst'
              } else if (affectedPaths.contains('niaid.bionimbus.org/manifest.json')) {
                env.AFFECTED_PATH = 'niaid.bionimbus.org/manifest.json'               
                env.KUBECTL_NAMESPACE = 'qa-niaid'
              } else if (affectedPaths.contains('dcp.bionimbus.org/manifest.json')) {
                env.AFFECTED_PATH = 'dcp.bionimbus.org/manifest.json'               
                env.KUBECTL_NAMESPACE = 'qa-dcp'
              } else {
                println "production stuff was not affected, aborting"
                currentBuild.result = 'SUCCESS'
                env.ABORT_SUCCESS = 'true';
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
    stage('RunInstall') {
      when {
        environment name: 'ABORT_SUCCESS', value: 'false'
      }
      steps {
        dir('gen3-qa') {
          withEnv(['GEN3_NOPROXY=true']) {
            sh "bash ./run-install.sh"
          }
        }
      }
    }
    stage('RunTests') {
      when {
        environment name: 'ABORT_SUCCESS', value: 'false'
      }
      steps {
        dir('gen3-qa') {
          withEnv(['GEN3_NOPROXY=true', "vpc_name=$env.KUBECTL_NAMESPACE", "GEN3_HOME=$env.WORKSPACE/cloud-automation"]) {
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