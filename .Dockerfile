# Use an official Node.js runtime as the base image
FROM node:18-alpine

# Set the working directory inside the container
WORKDIR /src

# Copy package.json and package-lock.json (or yarn.lock)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Build the Primo CMS project
RUN npm run build

# Expose the port your app runs on (Primo CMS typically uses port 3000)
EXPOSE 3000

# Command to run the application
CMD ["npm", "start"]
