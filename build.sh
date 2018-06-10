#!/bin/bash -e

function finish {
    popd
}
trap finish EXIT

pushd .
cd hello_world

npm i
npm test
npm build

