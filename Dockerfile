FROM java:8
MAINTAINER dinuka.malalanayake@gmail.com

ARG APIM_VERSION=${APIM_VERSION:-2.1.0}
RUN wget --user-agent="testuser" --referer="http://connect.wso2.com/wso2/getform/reg/new_product_download"  http://product-dist.wso2.com/products/api-manager/${APIM_VERSION}/wso2am-${APIM_VERSION}.zip

RUN pwd
RUN ls -la
RUN apt-get update && \
    apt-get install -y zip && \
    apt-get clean && \
    unzip wso2am-${APIM_VERSION}.zip -d /tmp && \
    rm wso2am-${APIM_VERSION}.zip

EXPOSE 9443 9763 8243 8280 10397 7711
WORKDIR /tmp/wso2am-${APIM_VERSION}
ENTRYPOINT ["bin/wso2server.sh"]