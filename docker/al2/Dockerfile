FROM arm64v8/amazonlinux:2
COPY docker/al2/prerequisites.sh prerequisites.sh
COPY src/setup.sh setup.sh
RUN mv prerequisites.sh $HOME/prerequisites.sh
RUN mv setup.sh $HOME/setup.sh
RUN sh $HOME/prerequisites.sh
CMD sh $HOME/setup.sh
