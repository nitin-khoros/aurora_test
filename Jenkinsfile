pipeline {
    agent any
    environment {
        CREDS = credentials('jenkins-token')
    }
    stages {
        stage('Script 1') {
            steps {
                script {sh "chmod +x $WORKSPACE/Scripts/1.sh && $WORKSPACE/Scripts/1.sh"}
//                 echo "${VAR1}"
            }
        }
        stage('Script 2') {
            steps {
                sh "chmod +x $WORKSPACE/Scripts/2.sh && $WORKSPACE/Scripts/2.sh"
            }
        }
    }
}
