pipeline {

    agent any

    stages {

        stage('Build') {
            steps {
                sh 'bash scripts/build.sh'
            }
        }

        stage('Test') {
            steps {
                sh 'bash scripts/run-tests.sh'
            }
        }

        stage('Package') {
            steps {
                sh 'bash scripts/package.sh'
            }
        }

    }

    post {

        always {

            archiveArtifacts artifacts: 'artifacts/*'

            junit 'reports/test-report.xml'
        }
    }

}