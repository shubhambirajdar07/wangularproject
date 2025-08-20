# Stage 1: Build Angular app
FROM node:18 AS build
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build --configuration=production

# Stage 2: Serve with Nginx
FROM nginx:alpine
COPY --from=build /app/dist/angular-17-crud /usr/share/nginx/html
EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]
