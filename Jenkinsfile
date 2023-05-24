pipeline {
    agent any

    stages {
       
        stage('Deploy First') {
            steps {
                sh 'aws s3api create-bucket --bucket testwowochitf --region us-east-1'
            }
        }
        stage('Deploy Second') {
            steps {
                sh 'aws s3api create-bucket --bucket testwowochitfr --region us-west-1'
            }
        }
        
    }
}