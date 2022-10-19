pipeline {
    agent any

    stages {       
        stage('Build container'){
            steps {
                script {
                    app = docker.build("simple-website:${env.BUILD_ID}")   
                }
            }
        }
        
        stage('Loading container to Register'){
            steps {
                echo "This step will load the builded container to ECR"   
            } 
        }
        
        stage('Deployment') {
            steps {
               echo 'this will deploy the software'
                echo 'Perhaps deplying to kubernets or docker swram'
                echo "build-number: ${env.BUILD_NUMBER}"
            }
        }
    }
}
