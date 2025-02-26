FROM node:18 AS build
WORKDIR ./app
COPY package*.json ./
RUN npm install
COPY . .
RUN ls -la  # Debug: List files in the working directory
RUN npm run build

FROM nginx:alpine
COPY --from=build /app/dist/test-kubernate-integration/browser /usr/share/nginx/html
EXPOSE 80
