pipeline {
    agent any

    stages {
        stage('Github checkout') {
            steps {
                script {
                    git credentialsId: '94cb5d88-61b7-4d90-bfa9-61624550e66d',
                    url: 'git@github.com:jabid021/SOPRA-250905-GIT.git',
                    branch: 'main'
                }
            }
        }

        stage('NPM build') {
            agent {
                docker {
                    image 'node:lts-bullseye'
                    args '''
                        -v $HOME/.npm:/root/.npmm2:z
                        -u root
                    '''
                    reuseNode true // Sans ça, il y aura un 2eme workspace
                }
            }

            steps {
                dir('quest-angular') {
                    sh 'npm -install'
                    sh './node_modules/.bin/ng build'
                }
            }
        }

        stage('Docker Build') {
            steps {
                dir('quest-angular') {
                    sh 'docker build -t ajc/quest-angular .'
                }
            }
        }
	stage('Docker Deploy'){
		steps{
      dir('quest-angular'){
      sh 'docker compose up -d'
      }
    }
    }
}
}
