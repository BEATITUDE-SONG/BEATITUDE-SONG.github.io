#!/usr/bin/env bash

SRC_PATH=$(pwd)

pushd ${SRC_PATH}
    if [ "${1}x" == "x" ]; then
        hexo clean
        hexo d -g
        hexo s
    else
        npm install hexo --save
        npm i --save hexo-wordcount
        hexo -v
        npm install
        hexo clean
        hexo d -g
    fi
popd