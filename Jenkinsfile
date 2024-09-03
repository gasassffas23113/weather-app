pipeline {
    agent any
    stages {
        stage('Clone') {
            steps {
                git 'https://github.com/gasassffas23113/weather-app.git'
            }
        }
        stage('Install Dependencies') {
            steps {
                sh 'pip install -r requirements.txt'
            }
        }
        stage('Test') {
            steps {
                sh 'pytest'  # если есть тесты
            }
        }
        stage('Deploy to Test') {
            steps {
                sh './deploy.sh test'
            }
        }
        stage('Deploy to Production') {
            steps {
                input message: "Deploy to Production?", ok: "Deploy"
                sh './deploy.sh prod'
            }
        }
    }
}
