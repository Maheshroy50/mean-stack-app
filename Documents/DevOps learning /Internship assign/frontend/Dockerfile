# Stage 1: Build the Angular application
FROM node:18-alpine AS build

WORKDIR /app

COPY package*.json ./

# Install dependencies (including devDependencies for build)
RUN npm ci && npm cache clean --force

COPY . .

RUN npm run build -- --configuration production

# Stage 2: Serve the application with Nginx
FROM nginx:1.25-alpine

# Copy built assets
COPY --from=build /app/dist/angular-15-crud /usr/share/nginx/html

# Copy Nginx configuration
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Expose port 80
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
