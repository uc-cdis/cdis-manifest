#!groovy
@Library('cdis-jenkins-lib@refactor/all') _
// testing 123
runPipeline {
  pipeline = 'gitops'
  serviceTesting = [name: 'fence', branch: 'master']
  MANIFEST = true
}