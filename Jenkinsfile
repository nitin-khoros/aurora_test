pipeline {
    agent any
    environment {
        CREDS = credentials('jenkins-token')
    }
    stages {
        stage('Script 1') {
            steps {
                script {
                  writeFile file: 'play.properties', text: ''
                  sh "chmod +x $WORKSPACE/Scripts/1.sh && $WORKSPACE/Scripts/1.sh"
                  readFile 'play.properties'
                  echo "${VAR1}"
                }
            }
        }
        stage('Script 2') {
            steps {
                script {
                  readFile 'play.properties'
                  sh "chmod +x $WORKSPACE/Scripts/2.sh && $WORKSPACE/Scripts/2.sh"
                }
            }
        }
    }
}
