pipeline {
    agent any

    tools {
        jdk 'javs' // Ensure this matches the JDK tool name configured in Global Tool Configuration
        maven 'mymaves' // Ensure this matches the Maven tool name configured in Global Tool Configuration
    }

    environment {
        DOCKER_IMAGE = "ramameghana02/hackathon:${BUILD_NUMBER}"
    }

    stages {
        stage('Compile') {
            steps {
                sh "mvn compile"
            }
        }

        stage('Test') {
            steps {
                sh "mvn test"
            }
        }

        stage('Package') {
            steps {
                sh "mvn package"
            }
        }

        stage('Docker Build and Push') {
            steps {
                script {
                    // Build Docker image
                    sh "sudo docker build -t ${DOCKER_IMAGE} ."
                    // Push Docker image
                    sh "sudo docker push ${DOCKER_IMAGE}"
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                    // Run Docker container
                    sh "sudo docker run -itd -P ${DOCKER_IMAGE}"
                }
            }
        }
    }

    post {
        always {
            // Clean up workspace after the build
            cleanWs()
        }
    }
}
