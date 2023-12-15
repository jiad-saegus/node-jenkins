pipeline {
    agent any
    
    environment {
        ANSIBLE_VERSION = '2.9.27' // Specify the Ansible version you need
    }

    stages {
        stage('Checkout') {
            steps {
                script {
                    git branch: 'main', url: 'https://github.com/jiad-saegus/node-jenkins'
                }
            }
        }
        
        stage('Deploy') {
            steps {
                script {
                    ansiblePlaybook(
                        playbook: 'playbook.yml',
                        inventory: 'inventory.ini',
                        extras: "-e ansible_version=${ANSIBLE_VERSION}",
                        name: 'ansible'

                    )
                }
            }
        }
    }
}
