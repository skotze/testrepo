#!/bin/bash
sed  -i -e "s@# registry_external_url.*@registry_external_url 'https://registry.gitlab.example.com@" /etc/gitlab/gitlab.rb
sed  -i -e "s@registry_external_url.*@registry_external_url 'https://$DOCKERHOST_HOSTNAME:$REGISTRY_PORT'@" /etc/gitlab/gitlab.rb
sed  -i -e "s@# registry_nginx\['ssl_certificate'\].*@registry_nginx['ssl_certificate'] = \"/certificates/server.crt\"@" /etc/gitlab/gitlab.rb
sed  -i -e "s@# registry_nginx\['ssl_certificate_key'\].*@registry_nginx['ssl_certificate_key'] = \"/certificates/server.key\"@" /etc/gitlab/gitlab.rb

exec /assets/wrapper