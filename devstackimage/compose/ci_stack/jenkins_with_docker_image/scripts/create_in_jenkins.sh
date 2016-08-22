#sample usage:
#./create_in_jenkins.sh ~/ci_volumes/jenkins/var/jenkins_home/workspace/compile_and_test/target/universal/ play-java-intro-1.0-SNAPSHOT.tgz play-java-intro:1.0-SNAPSHOT
set -x
docker pull $DOCKERHOST_HOSTNAME:$REGISTRY_PORT/java8_base:latest
docker tag $DOCKERHOST_HOSTNAME:$REGISTRY_PORT/java8_base:latest java8_base:latest
cp $1/$2 .

docker build --build-arg archive=$2 -t $3 .




