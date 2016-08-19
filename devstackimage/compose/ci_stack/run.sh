export VOLUMES_DIR=~/home/osboxes/ci_volumes
mkdir -p $VOLUMES_DIR/jenkins/var/jenkins_home
chown 1000 $VOLUMES_DIR/jenkins/var/jenkins_home
docker-compose up