# aws_cli_docker
Docker slave container with Amazon AWS command line tools

this image is intended to be used with the Jenkins docker plugin, please see bellow for configuration
https://wiki.jenkins-ci.org/display/JENKINS/Docker+Plugin

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


# Check versions
docker run -it aws_cli_docker /bin/bash
java --version
aws --version
eb --version

# Versions

v0.5
openjdk version "1.8.0_91"
aws-cli/1.11.76 Python/3.5.1+ Linux/3.13.0-106-generic botocore/1.5.39
EB CLI 3.10.1 (Python 3.5.1)

v0.4 (latest)
openjdk version "1.8.0_91"
aws-cli/1.11.54 Python/3.5.1+ Linux/4.4.44-39.55.amzn1.x86_64 botocore/1.5.17

v0.3
openjdk version "1.8.0_91"
aws-cli/1.11.20 Python/3.5.1+ Linux/4.4.44-39.55.amzn1.x86_64 botocore/1.4.77
