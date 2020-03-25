def sitename = "UNKNOWN"
def workspace = "UNKNOWN"
def vpc_id = "vpc-0f501f6a"
def sepp_RDS_PASSWORD = "sepp_RDS_PASSWORD"

pipeline {
  agent any
  environment {
    AWS_REGION = "ap-southeast-2"
  }
  stages {
		stage('setup'){
      steps {
        sh 'npm install'
      }
    }
    stage('test') {
			steps {
				sh 'npm start'
			}
		}
  }
}
