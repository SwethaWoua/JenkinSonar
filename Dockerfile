FROM jenkins/jenkins:latest

COPY docker-resources/plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt

COPY docker-resources/jenkins.yaml /usr/share/jenkins/ref/jenkins.yaml
COPY docker-resources/SonarGtest1.xml /usr/share/jenkins/ref/jobs/sonarqube-good-code/config.xml


ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false