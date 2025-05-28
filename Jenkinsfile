pipeline {
  agent any
  tools {
    maven 'maven'
  }
  environment {
    DOCKERHUB_USERNAME = "venugopaldr"
  }
  stages {
    stage('clean') {
      steps {
        sh 'mvn clean'
      }
    }
    stage('validate') {
      steps {
        sh 'mvn validate'
      }
    }
    stage('test') {
      steps {
        sh 'mvn test'
      }
    }
    stage('package') {
      steps {
        sh 'mvn package'
      }
      post {
        success {
          echo 'Build succeeded!'
        }
      }
    }
    stage('build docker image') {
      steps {
        sh 'docker build -t zomato .'
      }
      post {
        success {
          echo 'Docker image built successfully!'
        }
        failure {
          echo 'Docker image build failed!'
        }
      }
    }
    stage('docker login') {
      steps {
        withCredentials([usernamePassword(credentialsId: 'dockerhub', usernameVariable: 'DOCKER_USER', passwordVariable: 'DOCKER_PASS')]) {
          sh 'echo "$DOCKER_PASS" | docker login -u "$DOCKER_USER" --password-stdin'
        }
      }
    }
    stage('push to docker hub') {
      steps {
        script {
          sh """
            docker tag zomato ${DOCKERHUB_USERNAME}/zomato:latest
            docker push ${DOCKERHUB_USERNAME}/zomato:latest
          """
        }
      }
    }
    stage('remove docker image locally') {
      steps {
        sh """
          docker rmi ${DOCKERHUB_USERNAME}/zomato:latest
        """
      }
    }
    stage('Use Kubeconfig') {
      steps {
        withCredentials([file(credentialsId: 'kubeconfig', variable: 'KUBECONFIG')]) {
          sh 'kubectl apply -f deployment.yml'
        }
      }
    }
  }
  post {
    success {
      echo 'Deployment succeeded!'
    }
    failure {
      echo 'Deployment failed!'
    }
  }
}