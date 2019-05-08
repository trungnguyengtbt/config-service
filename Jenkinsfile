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
                        sh 'docker tag config-service:0.0.1-SNAPSHOT trungnguyengtbt/config-service:latest'
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
                        sh '/home/jenkins/runner.sh 192.168.1.172 5021 trungnguyengtbt/config-service:latest'
                    }
                }
    }
}
