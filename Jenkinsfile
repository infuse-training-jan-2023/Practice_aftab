pipeline {
     agent {
        label 'slave1'
    }
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
