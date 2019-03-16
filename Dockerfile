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

# create a workspace directory
RUN mkdir -p packages/web/examples/workspace

# make the workspace volume available
VOLUME /openjscad/packages/web/examples/workspace

# run the server
CMD npm run web
