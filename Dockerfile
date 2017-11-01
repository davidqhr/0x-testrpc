# setup a testrpc with 0x libraries
FROM node:6.9
RUN npm install -g ethereumjs-testrpc
EXPOSE 8545

RUN apt-get update && apt-get install -y unzip
RUN wget https://s3.amazonaws.com/testrpc-shapshots/35053f9.zip \
  && unzip ./35053f9.zip -d /0x_testrpc_snapshot

CMD testrpc --networkId 50 -h 0.0.0.0 -p 8545 --db /0x_testrpc_snapshot -m "concert load couple harbor equip island argue ramp clarify fence smart topic"