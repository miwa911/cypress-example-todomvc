pipeline {
  agent {
    docker {
      image 'cypress/base:8'
    }
  }
  stages {
    stage('Checkout') {
      steps {
        echo 'Getting source code...'
    		checkout scm
      }
    }
    stage('Build') {
      steps {
        sh 'npm install'
      }
    }
    stage('Test') {
      steps {
        sh 'npm run test:ci'
      }
    }
  }
}


