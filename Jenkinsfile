#!groovy
@Library('cdis-jenkins-lib@refactor/all') _

runPipeline {
  pipeline = 'gitops'
  serviceTesting = [name: 'fence', branch: 'master']
  MANIFEST = true
}