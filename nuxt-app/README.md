# Interactive Nuxt.js Application

This is a simple Nuxt.js application with interactive forms and buttons, styled with TailwindCSS.

## Features

- Interactive form with name, email, and message fields
- Form validation
- Submit and reset functionality
- Responsive design
- Docker support

## Development

To run the application locally:

1. Install dependencies:
```bash
npm install
```

2. Start the development server:
```bash
npm run dev
```

3. Open [http://localhost:3000](http://localhost:3000) in your browser

## Docker

To build and run the application using Docker:

1. Build the Docker image:
```bash
docker build -t nuxt-app .
```

2. Run the container:
```bash
docker run -p 3000:3000 nuxt-app
```

3. Open [http://localhost:3000](http://localhost:3000) in your browser 