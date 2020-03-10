FROM ubuntu:14.04


RUN apt-get update -y && apt-get upgrade -y



ENV PATH /google-cloud-sdk/bin:$PATH

COPY . /tmp/kube-jenkins-imager
RUN cp /tmp/kube-jenkins-imager/ssl_secrets.template.yaml /tmp/kube-jenkins-imager/ssl_secrets.yaml
RUN cp /tmp/kube-jenkins-imager/test/e2e.sh /tmp/kube-jenkins-imager/e2e.sh
