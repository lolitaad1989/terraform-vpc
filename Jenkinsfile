pipeline {
    agent any
    stages {
        stage('Terraform init') {
            steps {
                sh "terraform init -backend-config=env-${ENV}/${ENV}-backend.tfvars"
            }
        }
        stage('Terraform plan') {
            steps {
                sh "terraform plan -var-file=env-${ENV}/${ENV}.tfvars "
            }
        }
        stage('Terraform action') {
            steps {
                sh "terraform apply -var-file=env-${ENV}/${ENV}.tfvars -auto-approve"
            }
        }
    }
}