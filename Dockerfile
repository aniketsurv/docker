# Use an official Node.js runtime as a parent image
FROM node:16.0.0

# Set the working directory in the container
WORKDIR /myDirrr

# Copy the current directory contents into the container at /home/developers/AniketWorkSpace/Docker
COPY . .

# Install dependencies
RUN npm install

# Make the app available on port 3000
EXPOSE 3000

# Define the command to run the app
#CMD ["node", "index.js"]
CMD ["npm", "start"]
