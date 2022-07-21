pipeline {
    agent {label "docker"}

    stages {
        stage('docker build') {
            steps {
                script {
                    sh "docker build -f app/Dockerfile -t elizabethhuanca/imgyasmin:1.0.0-${BUILD_ID} app"
                }
            }
        }
        stage('docker push') {
            steps {
                script {
                    sh "docker push elizabethhuanca/imgyasmin:1.0.0-${BUILD_ID}"
                }
            }
        }
    }
}