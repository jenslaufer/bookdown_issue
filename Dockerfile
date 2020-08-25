FROM registry.gitlab.com/jenslaufer/bookdown-latex-kindlegen:r-4.0.2-kindlegen-2.9-ubuntu

COPY . book
WORKDIR book

RUN apt-get update && apt-get -y upgrade && apt-get install -y pandoc && apt-get -y autoremove

RUN Rscript ./build.R
