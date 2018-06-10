pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                nvm('v8.10.0') {
                    sh './build.sh'
                }
            }
        }
        stage('Package') {
            steps {
                sh './package.sh'
            }
        }
        stage('Deploy') {
            steps {
                sh './deploy.sh'
            }
        }
    }
}