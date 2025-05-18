FROM jenkins/jenkins:lts

USER root

# Install Node.js 20 (LTS)
RUN curl -fsSL https://deb.nodesource.com/setup_20.x | bash - \
  && apt-get update \
  && apt-get install -y nodejs

RUN node -v && npm -v

USER jenkins
