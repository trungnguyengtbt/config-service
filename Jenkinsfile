pipeline {
    agent any

    tools{
        jdk 'jdk8'
        maven 'maven3'
    }

    stages {

        stage('Build') {
<<<<<<< HEAD
                    steps {
                        sh 'docker build . -t trungnguyen.gtbt/config-service:latest'
                        sh 'docker build . -t config-service:latest'
                    }
                }

                stage('Publish') {
                     steps {
                        sh 'docker login --username=trungnguyengtbt --password=herO10068'
                        sh 'docker push trungnguyen.gtbt/config-service:latest'
                        sh 'docker tag config-service:latest trungnguyen.gtbt/config-service:latest'
                        sh 'docker push trungnguyen.gtbt/config-service'
                     }
                }

                stage('Run') {
                    steps {
                        sh 'ls ./target'
                        sh '/home/jenkins/transfer.sh target'
                    }
                }
=======
            steps {
                sh 'docker build .'
            }
        }
        stage('Run') { 
            steps {
                sh 'ls ./target'
                sh '/home/jenkins/transfer.sh target'
            }
        }
>>>>>>> master
    }
}