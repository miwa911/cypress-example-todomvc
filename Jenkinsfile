node {
	stage('Checkout') {
		echo 'Getting source code...'
		checkout scm
	}
  def testimage  = docker.build("test-image")
  try {
    // sh 'docker run --rm -v $PWD:/workdir/path test-image npm install && npm run test:ci'
    sh 'echo $PWD'
  } finally {
    echo 'Finally...'
  }


}

