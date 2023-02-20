pipeline {
    agent any
    parameters {
        choice(name: 'ENV', choices: ['dev', 'prod'], description: 'Choose an env')
        choice(name: 'ACTION', choices: ['apply', 'destroy'], description: 'Choose an action')
    }
    stages {
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