pipeline {
    agent any

    stages {
        stage('Deploy First Bucket') {
            steps {
                withCredentials([
                    [
                        $class: 'AmazonWebServicesCredentialsBinding',
                        credentialsId: 'jenkins-aws_cli',
                        accessKeyVariable: 'AWS_ACCESS_KEY_ID',
                        secretKeyVariable: 'AWS_SECRET_ACCESS_KEY'
                    ]
                ]) {
                    sh 'aws s3api create-bucket --bucket testwowochitf --region us-east-1'
                }
            }
        }
        
        stage('Deploy Second Bucket') {
            steps {
                withCredentials([
                    [
                        $class: 'AmazonWebServicesCredentialsBinding',
                        credentialsId: 'jenkins-aws_cli',
                        accessKeyVariable: 'AWS_ACCESS_KEY_ID',
                        secretKeyVariable: 'AWS_SECRET_ACCESS_KEY'
                    ]
                ]) {
                    sh 'aws s3api create-bucket --bucket testwowochitf123 --region eu-west-1'
                }
            }
        }
    }
}
