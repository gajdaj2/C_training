FROM dockette/nodejs

WORKDIR json-server

COPY . . 

RUN npm install -g json-server 

EXPOSE 3000

CMD ["json-server","-H","0.0.0.0","--watch","db.json"]

