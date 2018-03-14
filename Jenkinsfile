node {
	stage('Checkout') {
		echo 'Getting source code...'
		checkout scm
	}
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


}

