FROM node:18-alpine

# Set environment to production
ENV NODE_ENV=production
ENV PORT=80

WORKDIR /app

# Copy package files first to leverage Docker cache
COPY package*.json ./

# Install only production dependencies and clean cache
RUN npm ci --only=production && npm cache clean --force

# Copy application code with correct ownership
COPY --chown=node:node . .

# Use non-root user for security
USER node

EXPOSE 80

CMD ["node", "server.js"]
