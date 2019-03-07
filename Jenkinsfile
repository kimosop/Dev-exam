node {

stage('Clone Repository')
{
checkout scm
}


stage('Show me the files')
{
sh "ls -l"
}


stage('Build Docker Image and push image to DockerHub')

{
sh "docker build -t kimosop:version1 ."
}
  
stage('Docker login to hub and push the image'){
sh "docker login -u 'kimosop' -p 'XRRBfxNG9Lumxu7'"
sh "docker tag kimosop:version1 kimosop/exam:version1"
sh "docker push kimosop/exam:version1"
}


stage('Apply changes to the environment')
{
sh "ls -l"
}
stage('Deploy (Docker run the image)')
{
sh "docker run -d -p 1432:80/tcp kimosop:latest"
}



}