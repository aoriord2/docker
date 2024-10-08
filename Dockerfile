FROM amazonlinux:2023

RUN yum install -y nodejs npm

# Copy application files (assuming you have a package.json in the directory)
COPY . /app
WORKDIR /app

RUN npm install --omit=dev

ENTRYPOINT [ “npm”, “start”, “-p”, “80” ]
