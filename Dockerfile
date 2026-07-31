FROM node:latest


COPY . /home/app
# Set working directory
WORKDIR /home/app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install

EXPOSE 3000

# Copy remaining project files
COPY . .

# Start the application
CMD ["node", "index.js"]