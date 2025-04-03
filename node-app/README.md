# DevOps Ranch Application

A simple Node.js application with Express, built with Docker and Yarn.

## Prerequisites

- Docker
- Node.js (for local development)
- Yarn

## Local Development

1. Install dependencies:
```bash
yarn install
```

2. Start the application:
```bash
yarn start
```

The application will be available at http://localhost:3000

## Docker Build and Run

1. Build the Docker image:
```bash
docker build -t devops-ranch-app .
```

2. Run the container:
```bash
docker run -p 3000:3000 devops-ranch-app
```

The application will be available at http://localhost:3000

## Health Check

The application includes a health check endpoint at the root path (/). It returns a JSON response with the application status and timestamp.

## Features

- Express.js web server
- Docker containerization
- Curl installed for health checks
- Yarn package manager
- Latest Node.js version 