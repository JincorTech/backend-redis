pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        sh 'docker build . -t backend-redis:latest'
      }
    }
    stage('Deploy') {
      steps {
        sh 'docker tag backend-redis:latest registry.jincor.com/backend-redis:latest'
        sh 'docker push registry.jincor.com/backend-redis:latest'
      }
    }
  }
}