pipeline {
    agent any

    stages {
        stage('Deploy First') {
            steps {
                withCredentials([
                    [
                        $class: 'AmazonWebServicesCredentialsBinding',
                        credentialsId: 'jenkins-aws_cli',
                        accessKeyVariable: 'AWS_ACCESS_KEY_ID',
                        secretKeyVariable: 'AWS_SECRET_ACCESS_KEY'
                    ]
                ]) {
                    sh 'aws s3api create-bucket --bucket testwowochitf1212 --create-bucket-configuration LocationConstraint=eu-west-1'
                   sh 'aws s3api create-bucket --bucket testwowochitf15 --create-bucket-configuration LocationConstraint=eu-east-1'
                }
            }
        }
    }
}
