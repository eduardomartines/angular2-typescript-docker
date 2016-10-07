FROM node:latest

# NOTE: updating
  RUN apt-get update -y

# NOTE: creating user
  RUN mkdir -p /home/nodejs
  RUN groupadd -r nodejs
  RUN useradd -r -g nodejs -d /home/nodejs -s /sbin/nologin nodejs
  RUN chown -R nodejs:nodejs /home/nodejs

# building application
  ENV APP_HOME /angular-quickstart

  WORKDIR $APP_HOME
  COPY package.json typings.json $APP_HOME/
  # NOTE: it configs npm to be able to install PhantomJS
    RUN npm config set unsafe-perm true
    RUN npm config set strict-ssl false
  RUN npm install

# NOTE: setting application
  COPY . $APP_HOME
  RUN chown -R nodejs:nodejs $APP_HOME
  USER nodejs
