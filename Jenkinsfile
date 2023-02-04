pipeline {
     agent {
        label 'slave1'
    }
    stages {
        stage('build') {
            steps {
                bat 'ruby unit_testing.rb'
            }
        } 
         stage('merge') {
            steps {
                bat '''
                git checkout jenkins/ruby
                git pull origin jenkins/ruby
                git checkout jenkins/ruby-1
                git pull jenkins/ruby-1
                git checkout jenkins/ruby
                git merge jenkins/ruby-1
                git push origin jenkins/ruby
                '''
            }
        } 
    }
}
