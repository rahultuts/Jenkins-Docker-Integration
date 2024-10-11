pipeline {
    agent any

    stages {
        stage ('Git Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/vijayguduthuri/Netflix-Clone.git'
            }
        }

        stage ('Build Docker Image') {
            steps {
                sh 'docker build -t netflix .'
            }
        }

        stage ('Trivy Image Scan') {
            steps {
                sh 'trivy image netflix:latest'
            }
        }

        stage ('Pushing docker image to dockerhub') {
            steps {
                script {
                    withDockerRegistry(credentialsId: 'docker') {
                        sh 'docker tag netflix vijayguduthuri/netflix:latest'
                        sh 'docker push vijayguduthuri/netflix:latest'
                    }
                }
            }
        }

        stage ('Run Docker Container') {
            steps {
                sh 'docker run -itd --name cont1 -p 4000:80 netflix:latest'
            }
        }
    }
}
