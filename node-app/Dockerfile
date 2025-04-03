# Use the latest Node.js LTS version
FROM node:latest

# Install curl
RUN apt-get update && apt-get install -y curl && rm -rf /var/lib/apt/lists/*

# Create app directory
WORKDIR /usr/src/app

# Copy package files
COPY package.json yarn.lock ./

# Install dependencies using yarn
RUN yarn install

# Copy app source
COPY . .

# Expose port 3000
EXPOSE 3000

# Start the application
CMD [ "yarn", "start" ] 