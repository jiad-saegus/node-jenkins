pipeline {
    agent any
    
    
    stages{
        stage('Checkout'){
            steps {
                script {
                    git branch: 'main', url: 'https://github.com/jiad-saegus/node-jenkins'
                }
            }
        }
        
        stage('Deploy'){
            steps {
                script {
                    ansiblePlaybook(
                        playbook: '/usr/src/app/playbook.yml',
                        inventory: '/usr/src/app/inventory.ini'
                        )
                }
            }
        }
    }
}
