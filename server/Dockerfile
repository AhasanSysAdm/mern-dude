# Use the official Node.js image as the base image
FROM node:16

# Set the working directory in the container
WORKDIR /server

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install application dependencies
RUN npm install

# Copy the rest of the application code to the container
COPY . .

# Expose the port on which your Node.js app runs
EXPOSE 5000

# Define the command to start your Node.js app
CMD ["node", "server.js"]

