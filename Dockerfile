FROM amazonlinux:2023

RUN npm install –-omit=dev

ENTRYPOINT [ “npm”, “start”, “-p”, “80” ]
