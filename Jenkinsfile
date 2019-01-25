#!groovy
@Library('cdis-jenkins-lib@refactor/all') _
runPipeline {
  pipeline = 'microservice'
  serviceTesting = [name: 'fence', branch: 'master']
  MANIFEST = true
}
