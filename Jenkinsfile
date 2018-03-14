node {
	stage('Checkout') {
		echo 'Getting source code...'
		checkout scm
	}
	if (env.BRANCH_NAME == 'master') {
		def testimage  = docker.build("test-image")
    try {
      testimage.inside {
        withEnv([
            'HOME=.',
        ]) {
          echo 'Building dependencies...'
          sh 'npm install'
          echo 'Testing...'
          sh 'npm run test:ci'
        }
      }
    } finally {
      sh 'docker rmi test-image'
    }
	} else {
		echo "Day khong phai la branch dev nen khong lam gi ca "
	}

}

