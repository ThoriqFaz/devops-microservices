pipeline {
    agent any
    stages {
        stage('Clone Repo') {
            steps {
                git 'https://github.com/user/repository.git'
            }
        }
        stage('Run Tests') {
            steps {
                sh 'npm test'  // Replace with 'pytest' for Python
            }
        }
    }
}
