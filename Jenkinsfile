pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                git branch: 'main', credentialsId: 'your-jenkins-credential-id', url: 'https://github.com/kuronek01/website1.git'
            }
        }

        stage('Install Dependencies') {
            steps {
                sh 'npm install'  // For Node.js
                // sh 'pip install -r requirements.txt'  // Uncomment for Python
            }
        }

        stage('Run Tests') {
            steps {
                sh 'npm test'  // For Node.js
                // sh 'pytest'  // Uncomment for Python
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t my-app .'
            }
        }

        stage('Deploy Container') {
            steps {
                sh 'docker run -d -p 5000:5000 my-app'
            }
        }
    }

    post {
        success {
            echo 'Pipeline completed successfully!'
        }
        failure {
            echo 'Pipeline failed, check logs for details.'
        }
    }
}
