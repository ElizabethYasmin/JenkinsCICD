pipeline {
    agent {label "docker"}

    stages {

        stage('Login') {
          steps {
            sh 'docker login -u "$USERNAME" -p "$PASSWORD" $REGISTRY'
            
          }
        }
        stage('docker build') {
            steps {
                script {
                    sh 'docker build -f app/Dockerfile -t $PUBLIC_ENDPOINT:1.0.0-${BUILD_ID} app'
                    
                }
            }
        }
        stage('docker push') {
            steps {
                script {
                    sh 'docker push $PUBLIC_ENDPOINT:1.0.0-${BUILD_ID}'
                }
            }
        }
    }
} 