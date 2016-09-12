# aws_cli_docker
Docker slave container with Amazon AWS command line tools

# run interactivelly
docker run -it jenkinsslave/aws_cli_docker /bin/bash

# run same way as jenkins is using the image
docker run -p 2222:22 -d jenkinsslave/aws_cli_docker
ssh -p 2222 jenkins@localhost
(password: jenkins)

and use it with 
export AWS_ACCESS_KEY_ID=ABCDEF1234567890AABB
export AWS_SECRET_ACCESS_KEY=123457890asdfghjkl345678ghmfsdjksdjgasdh
aws s3 ls s3://anbucketname

in Jenkins the followin plugin provides credentials, which is configured in the job's Bindings section
https://wiki.jenkins-ci.org/display/JENKINS/CloudBees+AWS+Credentials+Plugin
