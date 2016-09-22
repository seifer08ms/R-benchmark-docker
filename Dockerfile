FROM rocker/r-base
MAINTAINER "ChenLiang Wang" hi181904665@gmail.com
#RUN apt-cache search libblas
RUN apt-get update && \
    apt-get install -y  time \
    libopenblas-base  libopenblas-dev\
    libatlas-dev libatlas3-base
#install SuppDists
RUN install.r SuppDists && wget  http://r.research.att.com/benchmarks/R-benchmark-25.R
COPY  ./r-benchmark.sh /
ENTRYPOINT ["/r-benchmark.sh"]
