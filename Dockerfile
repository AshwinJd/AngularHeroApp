FROM mhart/alpine-node

RUN mkdir -p /src/hero && \
    echo "Hero" && \
    npm install yarn -g

WORKDIR /src/hero

COPY package.json /src/hero
RUN yarn

COPY . /src/hero

EXPOSE 8080

CMD ["npm","start"]

