if [ -z $1 ]; then
  os='linux'
else
  os=$1
fi
if [ ! -d apache-servicecomb-service-center-1.3.0-$os-amd64 ] && [ ! -f apache-servicecomb-service-center-1.3.0-$os-amd64.tar.gz ]; then
  curl -O  http://mirrors.tuna.tsinghua.edu.cn/apache/servicecomb/servicecomb-service-center/1.3.0/apache-servicecomb-service-center-1.3.0-$os-amd64.tar.gz
  tar -zxf apache-servicecomb-service-center-1.3.0-linux-amd64.tar.gz
fi


if [ ! -d apache-servicecomb-service-center-1.3.0-$os-amd64 ]; then
  tar -zxf apache-servicecomb-service-center-1.3.0-$os-amd64.tar.gz
fi

./apache-servicecomb-service-center-1.3.0-$os-amd64/start-service-center.sh
