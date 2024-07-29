pipeline {
    agent any

    tools {
        jdk 'javs' // JDK tool name
        maven 'mymaves' // Maven tool name
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
    }
}
