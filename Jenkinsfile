pipeline {

    agent any

    tools {
        jdk 'JDK-21'
        maven 'Maven-3.9.16'
    }

    stages {

        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build') {
            steps {
                bat 'mvn clean compile'
            }
        }

        stage('Test') {
            steps {
                bat 'mvn test'
            }
        }

        stage('Package') {
            steps {
                bat 'mvn package'
            }
        }

        stage('Deploy') {
            steps {
                bat '''
                    copy /Y "target\\jenkins-demo.war" ^
                    "C:\\Program Files\\Apache Software Foundation\\Tomcat 11.0\\webapps\\jenkins-demo.war"
                '''
            }
        }

        stage('Verify') {
            steps {
                powershell '''
                    try {
                        $response = Invoke-WebRequest -Uri "http://localhost:8081/jenkins-demo/" -UseBasicParsing

                        Write-Host "Application verification successful."
                        Write-Host "HTTP Status: $($response.StatusCode)"

                        if ($response.StatusCode -ne 200) {
                            exit 1
                        }
                    }
                    catch {
                        Write-Error "Application verification failed."
                        Write-Error $_
                        exit 1
                    }
                '''
            }
        }
    }

    post {
        success {
            echo 'CI/CD Pipeline completed successfully.'
        }

        failure {
            echo 'CI/CD Pipeline failed.'
        }
    }
}