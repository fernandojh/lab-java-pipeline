pipeline {
    agent any
    tools {
        maven 'M3' // Debes configurar Maven en 'Global Tool Configuration' de Jenkins
    }
    stages {
        stage('Clone') {
            steps {
                checkout scm
            }
        }
        stage('Build') {
            steps {
                sh 'mvn clean compile'
            }
        }
        stage('SonarQube Analysis') {
            steps {
                withSonarQubeEnv('Sonar') { // Nombre definido en el paso 4.4
                    sh 'mvn sonar:sonar'
                }
            }
        }
    }
}