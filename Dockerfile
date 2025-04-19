# Use official Node.js image as base
FROM node:14

# Set working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package.json ./
RUN npm install

# Copy app code
COPY . ./

# Expose port
EXPOSE 8080

# Start the application
CMD ["npm", "start"]
