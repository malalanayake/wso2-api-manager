FROM java:8
MAINTAINER dinuka.malalanayake@gmail.com

ARG APIM_VERSION=${APIM_VERSION:-2.0.0}
RUN wget -P /tmp https://s3-us-west-2.amazonaws.com/wso2-stratos/wso2am-${APIM_VERSION}.zip && \
    apt-get update && \
    apt-get install -y zip && \
    apt-get clean && \
    unzip /tmp/wso2am-${APIM_VERSION}.zip -d /tmp && \
    rm /tmp/wso2am-${APIM_VERSION}.zip

EXPOSE 9443 9763 8243 8280 10397 7711
WORKDIR /tmp/wso2am-${APIM_VERSION}
ENTRYPOINT ["bin/wso2server.sh"]