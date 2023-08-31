FROM node:lts
WORKDIR /app

RUN echo '{ "posts": [ { "id": 1, "title": "json-server", "author": "typicode" } ], "comments": [ { "id": 1, "body": "some comment", "postId": 1 } ], "profile": { "name": "typicode" } }' > db.json

RUN npm install -g json-server

CMD ["json-server", "--watch", "db.json"]

