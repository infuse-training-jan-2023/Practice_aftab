pipeline {
    agent any

    stages {
        stage('build') {
            steps {
                bat 'javac find_duplicate.java'
            }
        }
    stage('run') {
            steps {
                bat 'java find_duplicate.java'
            }
        }     
    }
}
