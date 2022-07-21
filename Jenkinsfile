pipeline {
    agent {label "docker"}

    stages {
        stage('docker build') {
            steps {
                script {
                    sh "sudo docker build -f Dockerfile -t elizabethhuanca/imgyasmin:1.0.0-${BUILD_ID}"
                }
            }
        }
        stage('docker push') {
            steps {
                script {
                    sh "sudo docker push elizabethhuanca/imgyasmin:1.0.0-${BUILD_ID}"
                }
            }
        }
    }
}