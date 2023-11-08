# Use an official Node.js runtime as a parent image
FROM node:16

# Set the working directory inside the container
WORKDIR /client

# Copy the package.json and package-lock.json files to the container
COPY package*.json ./

# Install the project dependencies
RUN npm install

# Copy the entire project directory into the container
COPY . .

# Build the React app for production (customize this as needed)
RUN npm run build

# Expose a port that the container should listen on (usually 80 for HTTP)
EXPOSE 3000

# Define the command to run your application
CMD ["npm", "start"]

