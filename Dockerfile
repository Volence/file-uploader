FROM haskell:9.4.5-buster

WORKDIR /app
COPY . /app

RUN stack setup
RUN stack install yesod-bin --install-ghc
RUN stack build