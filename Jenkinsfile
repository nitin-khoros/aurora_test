pipeline {
    agent any
    environment {
        CREDS = credentials('jenkins-token')
    }
    stages {
        stage('Script 1') {
            steps {
              writeFile file: 'env.properties', text: ''
              sh "chmod +x $WORKSPACE/Scripts/1.sh && $WORKSPACE/Scripts/1.sh"
            }
        }
        stage('Script 2') {
            steps {
                sh "chmod +x $WORKSPACE/Scripts/2.sh && $WORKSPACE/Scripts/2.sh"
            }
        }
    }
}
