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
                        playbook: 'playbook.yml',
                        inventory: 'inventory.ini',
                        installation: 'ansible'
                        )
                }
            }
        }
    }
}
