# Use an outdated and vulnerable base image
FROM node:10.4.0

# Install a package with known vulnerabilities
RUN npm install -g lodash@4.17.11

# Add an insecure command for demonstration purposes
RUN chmod -R 777 /var/log

# Copy application source code
COPY . /app

# Set the working directory
WORKDIR /app

# Expose port 3000
EXPOSE 3000

# Run the application
CMD ["node", "app.js"]
