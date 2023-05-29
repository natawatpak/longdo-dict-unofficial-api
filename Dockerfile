# Specify the base image
FROM node:16

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install application dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose a port if required by your application
EXPOSE 8081

# Specify the command to run your application
CMD [ "node", "server.js" ]


