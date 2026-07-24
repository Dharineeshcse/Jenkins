pipeline {
    agent any

    stages {
        stage('Build All Branches') {
            steps {
                build job: 'multibranch-pipeline-v2/main'
                build job: 'multibranch-pipeline-v2/develop'
                build job: 'multibranch-pipeline-v2/feature-login'
                build job: 'multibranch-pipeline-v2/feature-payment'
            }
        }
    }
}