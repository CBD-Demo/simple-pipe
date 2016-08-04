node {
  stage 'build'
  docker.image('kohsuke/acmecorp-buildenv').inside {
    git 'https://github.com/uaarkoti/docker-jenkins-demo-app.git'
    sh 'mvn install'
    archive 'target/*.war'
  }

  stage 'package'
  docker.build('uday/acmecorp-app').push()

  stage 'deploy'
  sh './deploy.sh'

  stage 'pause'
  input 'Does everything look good?'
}
