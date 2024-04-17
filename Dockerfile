# Використовуємо офіційний контейнер Node.js як базовий образ
FROM node:14

# Створюємо та встановлюємо директорію для додатку
WORKDIR /usr/src/app

# Копіюємо package.json та package-lock.json та встановлюємо залежності
COPY package*.json ./
RUN npm install

# Копіюємо решту додатку в контейнер
COPY . .

# Використовуємо порт 3000
EXPOSE 3000

# Запускаємо сервер
CMD ["node", "server.js"]