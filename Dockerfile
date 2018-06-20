# setup a testrpc with 0x libraries
FROM node:8.8
RUN apt-get update && apt-get install -y unzip && rm -rf /var/lib/apt/lists/*
RUN npm install -g ganache-cli
RUN curl https://s3.amazonaws.com/testrpc-shapshots/07d00cc515e0f9825b81595386b358593b7a3d6f.zip --output 07d00cc515e0f9825b81595386b358593b7a3d6f.zip
RUN unzip ./07d00cc515e0f9825b81595386b358593b7a3d6f.zip -d ./0x_testrpc_snapshot
EXPOSE 8545
CMD ganache-cli -n --networkId 50 -h 0.0.0.0 -p 8545 --db /0x_testrpc_snapshot -m "concert load couple harbor equip island argue ramp clarify fence smart topic"
