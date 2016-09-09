FROM garland/aws-cli-docker:latest

MAINTAINER adam v0.1

RUN apk update && \
    apk add bash git openssh rsync && \
    ssh-keygen -A && \
    rm -rf /var/cache/apk/*

# Add jenkins user with "jenkins" password
RUN adduser -S jenkins -s /bin/bash && \
    echo "jenkins:jenkins" | chpasswd

# Standard SSH port
EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]