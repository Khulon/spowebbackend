# Use the official Node.js image.
# https://hub.docker.com/_/node
FROM node:18

# Create and change to the app directory.
WORKDIR /usr/src/app

# Install production dependencies.
COPY package*.json ./
RUN npm install --only=production

# Copy the app source code.
COPY . .

# Make port 4000 available to the world outside this container.
EXPOSE 4000

# Run the app.
CMD [ "node", "server.js" ]
