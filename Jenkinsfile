pipeline {
  agent any
  stages {
    stage('Clone Repo') {
      steps {
        git 'https://github.com/shubhambirajdar07/wangularproject.git'
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
