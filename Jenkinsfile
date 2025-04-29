pipeline {
    agent any

    stages {
        stage('Docker Cleanup') {
            steps {
                bat '''
                docker stop gen || echo Container not running
                docker rm gen || echo No container to remove
                docker rmi -f gen || echo No image to remove
                '''
            }
        }

        stage('Build Image') {
            steps {
                bat 'docker build -t gen .'
            }
        }

        stage('Run Container') {
            steps {
                bat 'docker run -d -p 3000:80 --name gen gen'
            }
        }
    }
}
