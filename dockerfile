FROM n8nio/n8n:latest

WORKDIR /home/node

EXPOSE 5678

CMD ["n8n", "start", "--tunnel"]