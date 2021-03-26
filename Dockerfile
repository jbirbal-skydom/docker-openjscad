# 2021MAR26
# OpenJSCADV2 dockerized version

FROM node

# Expose port 8081
EXPOSE 8081

# get the openjscad source
RUN git clone https://github.com/jscad/OpenJSCAD.org /openjscad

# change to the corresponding directory
WORKDIR /openjscad

#Version2 
RUN git checkout V2

#Copy Path
RUN cp -r ./packages/examples ./packages/web/

# install the software
RUN npm install

# prepare the bootstrap
RUN npm run bootstrap

# Documents
# RUN npm run docs

#Our new WD
WORKDIR /openjscad/packages/web

#Forced postinstall in problematic environment
RUN pwd

#couple commands that were edited in pre-release
RUN npm run postinstall

# create a workspace directory
RUN mkdir -p /examples/workspace

# make the workspace volume available
VOLUME /openjscad/packages/web/examples/workspace

# run the server
CMD npm run dev







# docker build . -t openjscad
