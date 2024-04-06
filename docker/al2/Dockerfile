FROM arm64v8/amazonlinux:2
COPY ./ /dev-env-setup/
RUN mv dev-env-setup/ $HOME/dev-env-setup/
RUN sh $HOME/dev-env-setup/docker/al2/prerequisites.sh
CMD sh $HOME/dev-env-setup/src/setup.sh
