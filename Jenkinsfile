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
                //added this for docker agent
                sh "docker run -d -e SE_NODE_SESSION_TIMEOUT=5000 -p 4444:4444 --shm-size=\"6g\" selenium/standalone-chrome:latest"
                sh 'mvn clean test'
            }
             post {
                always {
                    allure includeProperties:
                     false,
                     jdk: '',
                     results: [[path: 'target/allure-results']]
                }
            }
        }
        stage('Results') {
            steps {
                echo 'Creating Results....'
            }
        }
    }
}
