#!groovy

pipeline {
  options {
    buildDiscarder(logRotator(numToKeepStr: '10'))
  }
  agent any
  parameters{ 
    text(name: 'MVN_ARG', defaultValue: 'Please enter maven test command', description: 'This is to input maven argument')
    string(name: 'BRANCH', defaultValue: 'Please provide branch name', description: 'Branch to load the Dockerfile from.')
}
  stages {
    when {
        allOf {
            expression { params.BRANCH != null }
             }
           }
    stage('Build') {
      steps {
        script {
          sh '''
          chmod a+x build.sh
          ./build.sh
          '''
        }
      }
    }
  }
}
