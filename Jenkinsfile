node {
  stage 'build'
  docker.image('kohsuke/acmecorp-buildenv').inside {
    git 'https://github.com/uaarkoti/docker-jenkins-demo-app.git'
    sh 'mvn install'
    archive 'target/*.war'
  }

  stage 'package'
  docker.build('1919191919/CBC_DevOps_Pipeline').push()

  stage 'deploy'
  sh './deploy.sh'

  stage 'pause'
  input 'Does everything look good?'
}
