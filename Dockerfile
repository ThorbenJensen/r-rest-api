
FROM rocker/r-base
MAINTAINER Thorben Jensen <jensen.thorben@gmail.com>
  
# RUN apt-get update -qq && apt-get install -y \
#  git-core \
#  libssl-dev \
#  libcurl4-gnutls-dev

RUN R -e 'install.packages("plumber")'

COPY src src

EXPOSE 8000
ENTRYPOINT ["R", "-e", \
            "pr <- plumber::plumb('src/hello_world.R'); \
            pr$run(host='0.0.0.0', port=8000)"]
