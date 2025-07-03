FROM node:18-alpine

# Install dependencies
RUN apk add --no-cache bash curl python3 make gcc g++ libc6-compat

# Create app directory
WORKDIR /app

# Install n8n globally
RUN npm install n8n -g

# Set env variables
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=123456@n8ntest
ENV N8N_PORT=5678
ENV N8N_PROTOCOL=http
ENV N8N_HOST=0.0.0.0

EXPOSE 5678

CMD ["n8n"]
