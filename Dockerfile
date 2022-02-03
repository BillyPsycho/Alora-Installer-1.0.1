
FROM fusuf/whatsasena:latest


RUN git clone https://github.com/xRASHMITH/QueenAlora /root/QueenAlora

WORKDIR /root/QueenAlora/

ENV TZ=Europe/Istanbul

RUN npm install supervisor -g

RUN yarn install --no-audit

CMD ["node", "bot.js"]
