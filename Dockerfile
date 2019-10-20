# base image
FROM node:10.14.2

# set working directory
WORKDIR /cloud-app

# add `/app/node_modules/bin:$PATH`

# install and cache app dependencies
COPY package.json /cloud-app/package.json
RUN npm install
RUN npm install react-scripts@3.0.1 -g

CMD ["npm", "start"]
