pipeline {
    agent any   // Use any available machine (agent) to run the pipeline

    environment {
        DEPLOY_SCRIPT = './deploy.sh'  // Reusable variable for your deploy script
    }

    stages {

        // Stage 1: Check for README.md file
        stage('Verify README.md') {
            steps {
                echo '🔍 Checking if README.md exists...'
                sh '''
                    if [ -f "README.md" ]; then
                        echo " README.md is present."
                    else
                        echo " README.md is missing. Stopping pipeline."
                        exit 1
                    fi
                '''
            }
        }

        // Stage 2: Build (for HTML/CSS there's nothing to build, just info)
        stage('Build') {
            steps {
                echo ' Nothing to build for static files, skipping...'
            }
        }

        // Stage 3: Test (this is just a placeholder)
        stage('Test') {
            steps {
                echo ' No real tests, just a demo message...'
            }
        }

        // Stage 4: Deploy
        stage('Deploy') {
            steps {
                echo " Starting deployment using $DEPLOY_SCRIPT"
                sh "$DEPLOY_SCRIPT"  // Run the deploy.sh script
            }
        }
    }

    // After the stages finish, report success or failure
    post {
        success {
            echo ' Everything worked! App deployed successfully.'
        }
        failure {
            echo 'Something went wrong. Check the logs above.'
        }
    }
}
