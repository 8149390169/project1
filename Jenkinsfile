pipeline {
    agent any
/*
	
*/
   environment {
        registry = "shubhambh/project1"
        registryCredential = 'dockerhubcreds'
    }

    stages{ 

        stage('Building images') {
            steps{
              script {
                dockerImage = docker.build registry + ":$BUILD_NUMBER"
              }
            }
        }
        stage('listing images') {
            steps{
               
              sh  'docker images'
              
            }
        }
        
       stage('Push Image to DockerHub') {
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
            sh "docker rmi $registry:$BUILD_NUMBER"
          }
        }
       stage('Kubernetes Deploy') {
	  steps {
            sh "kubectl create deployment todo-app --image ${registry}"
            }
        }
       stage('Service Deploy') {
	  steps {
            sh "kubectl create deployment todo-app --image ${registry}"
            }
        }
    }
}
