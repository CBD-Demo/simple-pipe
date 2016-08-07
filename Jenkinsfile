node ("ecs"){
  stage 'build'
  docker.image('kohsuke/acmecorp-buildenv').inside {
    git 'https://github.com/CBD-Demo/simple-pipe.git'
    sh 'mvn install'
    archive 'target/*.war'
  }

  stage 'package'
  docker.build('msos/msos').push()

  stage 'deploy'
  sh './deploy.sh'

  stage 'pause'
  input 'Does everything look good?'
}
