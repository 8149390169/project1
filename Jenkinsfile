pipeline {

    agent any
/*
	
*/
    environment {
        registry = "swapnilsrd/vprofilecicd"
        registryCredential = 'dockerhub'
    }

    stages{
 
	

        stage('Building image') {
            steps{
              script {
                dockerImage = docker.build registry + "V:$BUILD_NUMBER"
              }
            }
        }
        
        

        
        

    }


}
