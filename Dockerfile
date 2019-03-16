# 2019-03-16
# OpenJSCAD dockerized version
FROM node:6

# Expose port 8080
EXPOSE 8080

# see also http://www.bitplan.com
MAINTAINER Wolfgang Fahl <wf@bitplan.com>

# get the openjscad source
RUN git clone https://github.com/jscad/OpenJSCAD.org /openjscad

# change to the corresponding directory
WORKDIR /openjscad

# install the software
RUN npm install

# prepare the bootstrap
RUN npm run bootstrap

# run the server
CMD npm run web
