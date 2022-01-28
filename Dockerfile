
FROM fusuf/whatsasena:latest


RUN git clone https://github.com/xRASHMITH/hellobotz /root/hellobotz

WORKDIR /root/hellobotz/

ENV TZ=Europe/Istanbul

RUN npm install supervisor -g

RUN yarn install --no-audit

CMD ["node", "bot.js"]
