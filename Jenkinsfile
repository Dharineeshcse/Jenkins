pipeline {

    agent any
    stages {
        stage('Build'){
            steps{
                echo "Building application from test-branch-2"
            }
        }
        stage('Test'){
            steps{
                echo "Running tests from test-branch-2"
            }
        }
    }
    
    post {

        success {
            echo 'Build Successful'
        }
    }
}