#!/bin/bash

VERSION=`echo "console.log(require('./package.json').version)" | node`

echo Building dist files for $VERSION...
mkdir -p dist
browserify -t browserify-shim src/L.Routing.OpenRouteService.js >dist/lrm-openroute.js
uglifyjs dist/lrm-openroute.js >dist/lrm-openroute.min.js
echo Done.