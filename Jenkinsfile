pipeline {
    agent any
    tools {
        maven 'maven'
    }
    stages {
        stage('Build') {
            steps {
                echo 'Building..'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
                sh 'mvn -U clean install'
            }
        }
        stage('Results') {
            steps {
                echo 'Creating Results....'
            }
        }
    }
}
