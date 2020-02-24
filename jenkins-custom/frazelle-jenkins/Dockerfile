FROM docker.r.winry.it/jenkins:lts

# Skip initial setup
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false

ENV JENKINS_UC https://updates.jenkins.io/update-center.actual.json

# ARG PLUGIN_INSTALLATION_MANAGER_TOOL_URL="https://r.winry.it/artifactory/github-release-remote/jenkinsci/plugin-installation-manager-tool/releases/download/plugin-management-parent-pom-1.0.2/jenkins-plugin-manager-1.0.2.jar"
# ARG PLUGIN_INSTALLATION_MANAGER_TOOL="jenkins-plugin-manager-1.0.2.jar"
# ARG PLUGIN_INSTALLATION_MANAGER_TOOL_SHA256="5bc1247205110951935b20929ef5085105fc4001361989ab429a3a3f287998c2"

ARG PLUGIN_INSTALLATION_MANAGER_TOOL_URL="https://r.winry.it/artifactory/github-release-remote/jenkinsci/plugin-installation-manager-tool/releases/download/plugin-management-parent-pom-1.0.1/jenkins-plugin-manager-1.0.1.jar"
ARG PLUGIN_INSTALLATION_MANAGER_TOOL="jenkins-plugin-manager-1.0.1.jar"
ARG PLUGIN_INSTALLATION_MANAGER_TOOL_SHA256="159800683cb7629235cb902d4e108cecd812a2c80c7c2ade0fbc676956e92c89"

USER root
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
COPY plugins.yaml /usr/share/jenkins/ref/plugins.yaml
COPY jenkins.yaml /usr/share/jenkins/ref/jenkins.yaml
RUN curl -o /usr/local/bin/${PLUGIN_INSTALLATION_MANAGER_TOOL} -fsSL ${PLUGIN_INSTALLATION_MANAGER_TOOL_URL} \
  && echo "${PLUGIN_INSTALLATION_MANAGER_TOOL_SHA256}  /usr/local/bin/${PLUGIN_INSTALLATION_MANAGER_TOOL}" | sha256sum -c - \
  && java -jar /usr/local/bin/jenkins-plugin-manager-*.jar --plugin-file /usr/share/jenkins/ref/plugins.yaml --verbose \
  && rm /usr/local/bin/${PLUGIN_INSTALLATION_MANAGER_TOOL}

USER jenkins

ADD init.groovy.d /usr/share/jenkins/ref/init.groovy.d
ADD dsl /usr/share/jenkins/ref/dsl
