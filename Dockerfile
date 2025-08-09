FROM node:24.5.0-alpine

# Install n8n
WORKDIR /data
COPY . .
RUN npm ci --legacy-peer-deps

# Expose n8n port
EXPOSE 5678

# Start n8n
CMD ["n8n"]
