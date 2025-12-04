pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo "Compiling C program..."
                sh '''
                    gcc src/main.c -o program
                    echo "Build completed!"
                '''
            }
        }

        stage('Test') {
            steps {
                echo "Running tests..."
                sh 'chmod +x tests/test.sh'
                sh './tests/test.sh'
            }
        }

        stage('Deploy') {
            steps {
                echo "Deploying…"
                sh '''
                    mkdir -p deploy
                    cp program deploy/
                    echo "Deployment successful!"
                '''
            }
        }
    }

    post {
        always {
            archiveArtifacts artifacts: '**/program', fingerprint: true
        }
    }
}

