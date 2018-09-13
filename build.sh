#!/bin/bash -ex

cd master   && ./build.sh && cd -
cd slave    && ./build.sh && cd -
cd sentinel && ./build.sh && cd -
