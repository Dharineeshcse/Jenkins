pipeline {

    agent any

    stages {

        stage('Build') {
            steps {
                sh 'chmod +x scripts/build.sh'
                sh './scripts/build.sh'
            }
        }

        stage('Test') {
            steps {
                sh 'chmod +x scripts/run-tests.sh'
                sh './scripts/run-tests.sh'
            }
        }

        stage('Package') {
            steps {
                sh 'chmod +x scripts/package.sh'
                sh './scripts/package.sh'
            }
        }
    }

    post {

        always {

            junit 'reports/junit.xml'

            publishHTML([
                allowMissing: false,
                alwaysLinkToLastBuild: true,
                keepAll: true,
                reportDir: 'reports',
                reportFiles: 'report.html',
                reportName: 'PyTest HTML Report'
            ])

            archiveArtifacts(
                artifacts: 'artifacts/*.tar.gz',
                fingerprint: true
            )

            echo 'Pipeline Finished'
        }

        success {
            echo 'Build Successful'
        }

        failure {
            echo 'Build Failed'
        }
    }
}