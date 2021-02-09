FROM jenkins/inbound-agent
##添加构建工具maven,gradle,ant,node
ADD apache-maven-3.6.3-bin.tar.gz /usr/local
ADD gradle-6.8.2.tar /usr/local
ADD apache-ant-1.10.9-bin.tar.gz /usr/local
ADD node-v14.15.4-linux-x64.tar.xz /usr/local
ENV MAVEN_HOME=/usr/local/apache-maven-3.6.3
ENV GRADLE_HOME=/usr/local/gradle-6.8.2
ENV ANT_HOME=/usr/local/apache-ant-1.10.9
ENV NODE_HOME=/usr/local/node-v14.15.4-linux-x64
ENV PATH=$PATH:${MAVEN_HOME}/bin:$GRADLE_HOME/bin:$ANT_HOME/bin:$NODE_HOME/bin
