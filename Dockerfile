# Use official Node.js image as a base
FROM node:18

# Create and set working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json first to install dependencies
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Default command (optional for freestyle builds)
CMD ["npm", "start"]
