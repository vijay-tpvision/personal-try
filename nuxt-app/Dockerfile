# Build stage
FROM node:18-alpine AS build-stage

WORKDIR /app

# Copy package files
COPY package.json yarn.lock ./

# Install dependencies
RUN yarn install

# Copy project files
COPY . .

# Build the application
RUN yarn build

# Production stage
FROM node:18-alpine AS production-stage

WORKDIR /app

# Copy package files and install production dependencies
COPY package.json yarn.lock ./
RUN yarn install --production

# Copy built assets from build stage
COPY --from=build-stage /app/.output /app/.output

# Expose the port the app runs on
EXPOSE 3000

# Start the application
CMD ["yarn", "dev"] 