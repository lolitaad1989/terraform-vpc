pipeline {
    agent any
    stages {
        parameters {
        choice(name: 'ENV', choices: ['dev', 'prod'], description: 'Pick something')
    }
        stage('Terraform init') {
            steps {
                sh "terrafile -f env-${ENV}/Terrafile"
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