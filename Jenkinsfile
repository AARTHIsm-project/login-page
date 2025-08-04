pipeline {
    agent any

    environment {
        DEPLOY_SCRIPT = './deploy.sh'
    }

    stages {

        stage('Checkout Code') {
            steps {
                echo ' Cloning repository from GitHub...'
                git 'https://github.com/AARTHIsm-project/login-page'
            }
        }

        stage('Verify README.md') {
            steps {
                echo ' Checking for README.md...'
                sh '''
                    if [ -f "README.md" ]; then
                        echo " README.md found."
                    else
                        echo " README.md not found. Aborting pipeline."
                        exit 1
                    fi
                '''
            }
        }

        stage('Build') {
            steps {
                echo ' (Optional) Build stage for static files...'
                // For static HTML/CSS, build is usually skipped
                // Add asset minification or bundling if needed
            }
        }

        stage('Test') {
            steps {
                echo ' No formal tests for static HTML, just placeholder...'
                // Optionally add HTML validator or accessibility check here
            }
        }

        stage('Deploy') {
            steps {
                echo "Running deployment script: $DEPLOY_SCRIPT"
                sh "$DEPLOY_SCRIPT"
            }
        }
    }

    post {
        success {
            echo ' Pipeline completed successfully.'
        }
        failure {
            echo ' Pipeline failed. Please check the logs.'
        }
    }
}