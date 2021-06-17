#/bin/bash

helm package mars
mv mars-* docs/
helm repo index docs --url https://duc-cnzj.github.io/mars-charts/

echo "done!"