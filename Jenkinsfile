pipeline {
    agent any
    
    
    stages('Checkout'){
        stage {
            steps {
                script {
                    git 'https://github.com/jiad-saegus/node-jenkins'
                }
            }
        }
        
        stage('Deploy'){
            steps {
                script {
                    ansiblePlaybook(
                        playbook: '/usr/src/app/playbook.yml',
                        inventory: '/usr/src/app/inventory.yml'
                        )
                }
            }
        }
    }
}
