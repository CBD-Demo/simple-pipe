node ("ecs"){
  stage 'build'
  docker.image('kohsuke/acmecorp-buildenv').inside {
    git 'https://github.com/CBD-Demo/simple-pipe.git'
    sh 'mvn install'
    archive 'target/*.war'
  }

  docker.withRegistry('https://index.docker.io/v1/', 'fe56a80f-2c3c-4c1a-bfe5-886811ddc14a') {
  stage 'package'

  docker.build('emasos/bizops').push('emasos')
  
  stage 'deploy'
  sh './deploy.sh'
  }
  
  stage 'UAT'
  input 'User Acceptance Test!'
}
