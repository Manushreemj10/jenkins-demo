pipeline {
    agent any

    stages {
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t jenkins-demo .'
            }
        }

        stage('Run Docker Container') {
            steps {
                sh 'docker run --name my-node-app jenkins-demo'
            }
        }
    }
}
