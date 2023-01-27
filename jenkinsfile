pipeline {
    agent any

    stages {
        stage('build') {
            steps {
                bat 'javac find_duplicates.java'
            }
        }
    stage('run') {
            steps {
                bat 'java find_duplicates.java'
            }
        }     
    }
}
