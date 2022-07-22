pipeline {
    agent {label "docker"}

    stages {
        stage('docker build') {
            steps {
                script {
                    sh "DOCKER_BUILDKIT=1 docker build -f app/Dockerfile -t elizabethhuanca/imgyasmin:1.0.0-${BUILD_ID} app"
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
/* 
pipeline {
  environment {
    imagename = "elizabethhuanca/imgyasmin"
    registryCredential = 'elizabethhuanca'
    dockerImage = ''
  }
  agent {label "docker"}
  stages {
    stage('Cloning Git') {
      steps {
        git([url: 'https://github.com/ElizabethYasmin/JenkinsCICD.git', branch: 'yasmin', credentialsId: 'ElizabethYasmin'])
 
      }
    }
    stage('Building image') {
      steps{
        script {
          dockerImage = docker.build imagename
        }
      }
    }
    stage('Deploy Image') {
      steps{
        script {
          docker.withRegistry( '', registryCredential ) {
            dockerImage.push("$BUILD_NUMBER")
             dockerImage.push('latest')
          }
        }
      }
    }
    stage('Remove Unused docker image') {
      steps{
        sh "docker rmi $imagename:$BUILD_NUMBER"
         sh "docker rmi $imagename:latest"
 
      }
    }
  }
} */