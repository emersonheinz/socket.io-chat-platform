# Usa a imagem base do Node.js na versão 14
FROM node:14

# Define o diretório de trabalho dentro do container
WORKDIR /app

# Copia os arquivos de configuração de pacotes
COPY package*.json ./

# Instala as dependências do projeto
RUN npm install

# Copia o resto dos arquivos do projeto
COPY . .

# Expõe a porta em que o aplicativo vai rodar
EXPOSE 3000

# Define o comando para iniciar o aplicativo
CMD ["npm", "start"]
