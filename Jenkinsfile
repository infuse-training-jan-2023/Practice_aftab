pipeline {
    agent any

    stages {
        stage('build') {
            steps {
                bat 'javac DuplicateCharacters.java'
            }
        }
    stage('run') {
            steps {
                bat 'java DuplicateCharacters.java'
            }
        }     
    }
}
