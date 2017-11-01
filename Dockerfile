# setup a testrpc with 0x libraries
FROM node:8.0
RUN npm install -g ethereumjs-testrpc
EXPOSE 8545
COPY ./0x_testrpc_snapshot /0x_testrpc_snapshot
CMD testrpc --networkId 50 -h 0.0.0.0 -p 8545 --db /0x_testrpc_snapshot -m "concert load couple harbor equip island argue ramp clarify fence smart topic"
