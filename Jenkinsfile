#!groovy

pipeline {
  options {
    buildDiscarder(logRotator(numToKeepStr: '10'))
  }
  agent any
  parameters{ 
    text(name: 'mvn_arg', defaultValue: true, description: 'This is to input maven argument')    
}
  stages {
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
