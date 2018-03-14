pipeline {
  agent any
  stages {
    stage('Checkout') {
      steps {
        emailext body: 'test from jenkins', subject: 'test', to: 'hung.dang980@gmail.com'
      }
    }
  }
}


