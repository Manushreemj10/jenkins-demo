pipeline {
    agent any

    stages {

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t jenkins-demo .'
            }
        }

        stage('Remove Old Container') {
            steps {
                sh 'docker rm -f my-node-app || true'
            }
        }

        stage('Run Docker Container') {
            steps {
                sh 'docker run --name my-node-app jenkins-demo'
            }
        }
    }
}
