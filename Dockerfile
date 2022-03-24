# pull the official base image
FROM node:alpine
# set working direction
WORKDIR /app
# # add `/app/node_modules/.bin` to $PATH
# ENV PATH /app/node_modules/.bin:$PATH
# # install application dependencies
# COPY client/package.json ./
# COPY client/package-lock.json ./
# RUN npm i
# # add app
# COPY client ./
# RUN npm run build
# start app
COPY client/build ./build
RUN npm install -g serve

CMD ["serve", "-s", "build"]