FROM amazonlinux:2023

RUN yum install -y nodejs npm

RUN npm install –-omit=dev

ENTRYPOINT [ “npm”, “start”, “-p”, “80” ]
