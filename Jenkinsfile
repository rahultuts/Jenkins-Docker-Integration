pipeline {
  agent any
  tools {
    maven "maven3"
    jdk "jdk17"
  }
  stages {
    stage("Code Checkout") {
      steps {
        git branch: 'main', url: 'https://github.com/rahultuts/Jenkins-Docker-Integration'
      }
    }
    stage("Code Qulity Check") {
      steps {
        withSonarQubeEnv('sonar-token') {
          sh "mvn clean install sonar:sonar"

        }
      }
    }
  }
}
