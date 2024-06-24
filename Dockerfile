FROM node:alpine                           										# base image of node
RUN apk add --no-cache git                 										# git installation on node image
RUN apk add --no-cache openssh          									    # for secure way to log in to remote systems and perform tasks
RUN git clone git://github.com/swimlane/devops-practical.git /home/swimlane	 	# clone code a directory in base image local 
WORKDIR /home/swimlane                     										# switch to working directoty where we app stuff 
RUN npm install                             									# npm installation on node image
COPY .env.example .env                      									# copy .env.example file from local to congainer
EXPOSE 3000                                 									# opening api port 3000 
CMD ["npm", "start"]                        									# start npm 
