version=$1
docker login -u admin -p admin123 52.173.28.7:8082
docker login -u admin -p admin123 52.173.28.7:8083
docker tag aromal21/poc:82 52.173.28.7:8083/aromal21/poc:$version
docker push 52.173.28.7:8083/aromal21/poc:$version
