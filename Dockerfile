FROM circleci/node

# Installing serverless framework
RUN sudo npm update -g && \
    sudo npm install -g serverless

# Installing serverless framework plugins
RUN sudo npm install serverless-aws-documentation --seva-dev && \
    sudo npm install serverless-step-functions --save-dev && \
    sudo npm install serverless-python-requirements

# Installing python3
RUN sudo apt-get update && \
    sudo apt-get install python3 && \
    sudo apt-get install python3-pip

# Installing AWS client
RUN sudo pip3 install awscli

