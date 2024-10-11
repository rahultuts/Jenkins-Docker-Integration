pipeline {
    agent any

    stages {
        stage('Git Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/your-repo/cloud-gen-softech-system.git'
            }
        }

        stage('Build Maven Project') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t cloud-gen-softech-system .'
            }
        }

        stage('Run Docker Container') {
            steps {
                sh 'docker run -d -p 8080:8080 cloud-gen-softech-system'
            }
        }

        stage('Test Application') {
            steps {
                script {
                    def appUrl = 'http://localhost:8080/cloud-gen-softech-system'
                    sh "curl -f ${appUrl}"
                }
            }
        }
    }

    post {
        always {
            cleanWs()
        }
    }
}
