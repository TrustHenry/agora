#!/bin/sh

rm -rf /Users/henry/Work/BOA/Github/agora/localtest1/node/0/.cache/*
rm -rf /Users/henry/Work/BOA/Github/agora/localtest1/node/2/.cache/*
rm -rf /Users/henry/Work/BOA/Github/agora/localtest1/node/3/.cache/*
rm -rf /Users/henry/Work/BOA/Github/agora/localtest1/node/4/.cache/*
rm -rf /Users/henry/Work/BOA/Github/agora/localtest1/node/5/.cache/*
rm -rf /Users/henry/Work/BOA/Github/agora/localtest1/node/6/.cache/*
rm -rf /Users/henry/Work/BOA/Github/agora/localtest1/node/7/.cache/*

rm -rf /Users/henry/Work/BOA/Github/agora/localtest1/node/0/*.lst
rm -rf /Users/henry/Work/BOA/Github/agora/localtest1/node/2/*.lst
rm -rf /Users/henry/Work/BOA/Github/agora/localtest1/node/3/*.lst
rm -rf /Users/henry/Work/BOA/Github/agora/localtest1/node/4/*.lst
rm -rf /Users/henry/Work/BOA/Github/agora/localtest1/node/5/*.lst
rm -rf /Users/henry/Work/BOA/Github/agora/localtest1/node/6/*.lst
rm -rf /Users/henry/Work/BOA/Github/agora/localtest1/node/7/*.lst

rm -rf /Users/henry/Work/BOA/Github/stoa/logs
rm -rf /Users/henry/Work/BOA/Github/stoa/data

rm -rf /Users/henry/Work/BOA/Github/agora/localtest1/.cache0/*
rm -rf /Users/henry/Work/BOA/Github/agora/localtest1/.cache2/*
rm -rf /Users/henry/Work/BOA/Github/agora/localtest1/.cache3/*
rm -rf /Users/henry/Work/BOA/Github/agora/localtest1/.cache4/*
rm -rf /Users/henry/Work/BOA/Github/agora/localtest1/.cache5/*
rm -rf /Users/henry/Work/BOA/Github/agora/localtest1/.cache6/*
rm -rf /Users/henry/Work/BOA/Github/agora/localtest1/.cache7/*

cd /Users/henry/Work/BOA/Github/agora/localtest1
docker-compose up

#cd /Users/henry/work/boa/Github/stoa
#npm start -- -c /Users/henry/work/boa/Github/stoa/docs/config.example.yaml
