pipeline {
	agent any 
	tools{
		maven "maven3"
		jdk "jdk17"
	}
	environment{
		SCANNER_HOME = tool 'sonar-token'
	}
	stages{
		stage("Code Checkout"){
			steps{
				git branch: 'main', url: 'https://github.com/Cloud-Gen-DevOps-Projects/Jenkins-Docker-Integration.git'
			}
		}


	}
}