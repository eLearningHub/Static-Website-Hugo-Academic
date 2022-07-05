#!/bin/bash

function hugo {
ARGS=$@
echo hugo $ARGS
docker run --rm -it   -v $(pwd):/src -p 1313:1313 klakegg/hugo:0.101.0-ext $ARGS
}

export -f hugo