#!/bin/bash

# How to use: sudo bash gitlab_runner_install.sh
# Installing gitlab-runner, before using you should get personal token

set -e

curl -L --output /usr/bin/gitlab-runner https://gitlab-runner-downloads.s3.amazonaws.com/latest/binaries/gitlab-runner-linux-amd64

chmod +x /usr/bin/gitlab-runner
useradd --comment 'GitLab Runner' --create-home gitlab-runner --shell /bin/bash

gitlab-runner install --user=gitlab-runner --working-directory=/home/gitlab-runner
gitlab-runner start

gitlab-runner register \
  --url https://gitlab.com/ \
  --registration-token $token
