# setup a testrpc with 0x libraries
FROM node:8.8
RUN apt-get update && apt-get install -y unzip && rm -rf /var/lib/apt/lists/*
RUN npm install -g ganache-cli
RUN curl https://s3.amazonaws.com/testrpc-shapshots/78fe8dd.zip  --output 78fe8dd.zip
RUN unzip ./78fe8dd.zip -d ./0x_testrpc_snapshot
EXPOSE 8545
CMD ganache-cli -n --networkId 50 -h 0.0.0.0 -p 8545 --db /0x_testrpc_snapshot -m "concert load couple harbor equip island argue ramp clarify fence smart topic"
