def loadEnvs(propFile) {
  props = readProperties(propFile)
  props.each { key, val ->
    env[key] = val
  }
}
pipeline {
    agent any
    environment {
        CREDS = credentials('jenkins-token')
    }
    stages {
        stage('Script 1') {
            steps {
                script {
                    loadEnvs('env.props')
                }
                sh "chmod +x $WORKSPACE/Scripts/1.sh && $WORKSPACE/Scripts/1.sh"
//                 echo "${VAR1}"
            }
        }
        stage('Script 2') {
            steps {
                script {
                    loadEnvs('env.props')
                }
                sh "chmod +x $WORKSPACE/Scripts/2.sh && $WORKSPACE/Scripts/2.sh"
            }
        }
    }
}
