node {
	stage('Checkout') {
		echo 'Getting source code...'
		checkout scm
	}
  def testimage  = docker.build("test-image")
  try {
    sh 'docker run --rm test-image cat /workdir/path/results/my-test-output.xml > /home/docker/jenkins/jenkins_home/workspace/cypress_test_master-E5IGP2XAQ7F7XEQZQKP7KIXCKR56U3L2THTFLSVV6D5IJGXWZHNA/results/file.xml'
  } finally {
    echo 'Finally...'
  }


}

