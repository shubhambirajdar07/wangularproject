# Stage 1: Build Angular
FROM node:18 as build-stage
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build --configuration=production

# Stage 2: Serve with Nginx
FROM nginx:alpine
COPY --from=build-stage /app/dist/angular-17-crud /usr/share/nginx/html
EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]
