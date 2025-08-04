pipeline {
    agent any

    environment {
        DEPLOY_SCRIPT = 'deploy.bat'  // Windows batch file
    }

    stages {
        stage('Verify README.md') {
            steps {
                echo ' Checking if README.md exists...'
                bat '''
                    if exist README.md (
                        echo  README.md found.
                    ) else (
                        echo  README.md not found.
                        exit /b 1
                    )
                '''
            }
        }

        stage('Build') {
            steps {
                echo ' No build needed for static HTML...'
            }
        }

        stage('Test') {
            steps {
                echo ' No tests, just a placeholder...'
            }
        }

        stage('Deploy') {
            steps {
                echo " Running $DEPLOY_SCRIPT..."
                bat "$DEPLOY_SCRIPT"
            }
        }
    }

    post {
        success {
            echo ' Pipeline completed successfully!'
        }
        failure {
            echo ' Pipeline failed. Check above logs.'
        }
    }
}
