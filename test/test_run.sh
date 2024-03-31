#!/bin/zsh
docker build -t dev-env-setup-test docker/al2/
docker run -it dev-env-setup-test /bin/zsh
sh test/test_cleanup.sh
