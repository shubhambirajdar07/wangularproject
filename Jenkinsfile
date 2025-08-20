pipeline {
  agent any
  stages {
    stage('Clone Repo') {
      steps {
        git 'git@github.com:shubhambirajdar07/wangularproject.git'
		credentialsId: '37ebe839-8d51-4313-bfd8-a3ba8c9f97b0'
      }
    }
    stage('Install & Build') {
      steps {
        sh 'npm install'
        sh 'ng build --prod'
      }
    }
    stage('Deploy to Apache') {
      steps {
        sh 'sudo cp -r dist/wangularproject/* /var/www/html/'
        sh 'sudo systemctl restart apache2'
      }
    }
  }
}
