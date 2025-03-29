docker build -t $JOB_NAME:$BUILD_ID .

docker tag $JOB_NAME:$BUILD_ID sumitdangi830/$JOB_NAME:$BUILD_ID

docker tag $JOB_NAME:$BUILD_ID sumitdangi830/$JOB_NAME:latest

docker push sumitdangi830/$JOB_NAME:$BUILD_ID

docker push sumitdangi830/$JOB_NAME:latest

docker rmi -f $JOB_NAME:$BUILD_ID sumitdangi830/$JOB_NAME:$BUILD_ID sumitdangi830/$JOB_NAME:latest
