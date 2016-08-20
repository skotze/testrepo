export VOLUMES_DIR=/home/osboxes/ci_volumes
export JENKINS_CONTAINER_HOSTNAME=jenkins
export REGISTRY_CONTAINER_HOSTNAME=registry
export GITLAB_CONTAINER_HOSTNAME=gitlab
export DOCKERHOST_HOSTNAME=$(hostname)
export CI_STACK_VOLUME_NAME=ci_stack_volume

mkdir -p $VOLUMES_DIR/jenkins/var/jenkins_home
chown 1000 $VOLUMES_DIR/jenkins/var/jenkins_home
docker-compose rm -a -f
docker-compose up