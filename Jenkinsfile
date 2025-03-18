pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
                sh 'mvn clean test'
            }
        }
        stage('Results') {
            steps {
                echo 'Creating Results....'
            }
        }
    }
}
