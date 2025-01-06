pipeline{
	agent any 
	tools{
		maven "maven"
	}
	stages{
		stage("Checkout Git Git"){
			steps{
				git branch: 'main', url: 'https://github.com/Cloud-Gen-DevOps-Projects/Jenkins-Docker-Integration.git'
			}

		}

		stage("Clean Artifact "){
			steps{
				sh 'mvn clean'
			}
		}
		stage("Code Compile"){
			steps{
				sh 'mvn compile'
			}
		}
		stage("Building Artifact"){
			steps{
				sh 'mvn package'
			}
		}
		stage("Deploy to Nexus"){
			steps{
				sh 'mvn deploy'
			}
		}
	}
}