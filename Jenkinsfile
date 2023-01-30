pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                bat 'ruby unit_testing.rb'
            }
        } 
         stage('merge') {
            steps {
                bat '''git switch jenkins/ruby
                git merge jenkins/ruby-1
                '''
            }
        } 
    }
}
