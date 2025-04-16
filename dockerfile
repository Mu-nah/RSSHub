FROM node:18-alpine

# Set up work directory
WORKDIR /app

# Copy source code and install dependencies
COPY . .
RUN npm install --production

# Expose the port
EXPOSE 1200

# Start RSSHub
CMD ["npm", "start"]
