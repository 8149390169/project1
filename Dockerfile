ARG IMAGE_BASE=node

FROM $IMAGE_BASE
WORKDIR /app

# For Docker layer caching do this BEFORE copying in rest of app
COPY .web-app/package*.json ./
RUN npm install

# NPM is done, now copy in the rest of the project to the workdir
COPY .web-app/ .

# Port 3000 for our Express server
EXPOSE 8081
ENTRYPOINT ["npm", "start"]