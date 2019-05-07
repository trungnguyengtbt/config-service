pipeline {
    agent any

    tools{
        jdk 'jdk8'
        maven 'maven3'
    }

    stages {

        stage('Build') {
                    steps {
                        sh 'mvn clean package'
                        sh 'docker build . -t trungnguyengtbt/config-service:latest'
                    }
                }

                stage('Publish') {
                     steps {
                        sh 'docker login --username=trungnguyengtbt --password-stdin < /home/jenkins/dockerpassword'
                        sh 'docker push trungnguyengtbt/config-service:latest'
                     }
                }

                stage('Run') {
                    steps {
                        sh 'ls ./target'
                        sh '/home/jenkins/transfer.sh target'
                    }
                }
    }
}