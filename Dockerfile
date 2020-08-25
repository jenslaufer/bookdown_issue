FROM registry.gitlab.com/jenslaufer/bookdown-latex-kindlegen:r-4.0.2-kindlegen-2.9-ubuntu

COPY . book
WORKDIR book

RUN Rscript ./build.R
