#!/bin/zsh
docker build -t dev-env-setup-test -f docker/al2/Dockerfile .
docker run -it dev-env-setup-test
sh test/test_cleanup.sh
