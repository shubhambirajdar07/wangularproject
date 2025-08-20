pipeline {
  agent any
  stages {
    stage('Install & Build') {
      steps {
        sh 'npm install'
        sh 'ng build --configuration=production'
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
