#!/bin/bash
sed  -i -e "s@#registry_external_url 'https://registry.gitlab.example.com'@registry_external_url 'https://registry.gitlab.example.com@" /etc/gitlab/gitlab.rb
sed  -i -e "s@registry_external_url.*@registry_external_url 'https://$DOCKERHOST_HOSTNAME'@" /etc/gitlab/gitlab.rb
exec /assets/wrapper