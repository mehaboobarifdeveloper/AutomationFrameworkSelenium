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
                sh 'xvfb-run mvn clean test'
                sh 'mvn clean test -X'
            }
        }
        stage('Results') {
            steps {
                echo 'Creating Results....'
            }
        }
    }
}
