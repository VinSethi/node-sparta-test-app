# 1️⃣ Base Image
FROM node:18

# 3️⃣ Set the Default Working Directory
WORKDIR /usr/src/app

# 4️⃣ Copy Application Files
COPY app /usr/src/app
COPY package*.json ./

# 5️⃣ Install Dependencies
RUN npm install

# 6️⃣ Expose the Port
EXPOSE 3000

# 7️⃣ Default Command to Start the App
CMD ["node", "app.js"]
# If your app uses `npm start`, replace with:
# CMD ["npm", "start"]
