#!/bin/zsh
docker rm $(docker ps -a -q --filter "ancestor=dev-env-setup-test")
docker rmi dev-env-setup-test
