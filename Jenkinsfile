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
          echo 'Testing...'
        }
      }
    } finally {
      echo 'Finally...'
    }
	} else {
		echo "Day khong phai la branch dev nen khong lam gi ca "
	}

}

