#!/bin/bash
sed  -i -e "s@#registry_external_url 'https://registry.gitlab.example.com'@registry_external_url 'https://registry.gitlab.example.com@" /etc/gitlab/gitlab.rb
sed  -i -e "s@registry_external_url.*@registry_external_url 'https://$DOCKERHOST_HOSTNAME:$REGISTRY_PORT'@" /etc/gitlab/gitlab.rb
exec /assets/wrapper