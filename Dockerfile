FROM ubuntu:trusty
RUN apt-get update && apt-get install -y subversion build-essential libncurses5-dev zlib1g-dev gawk git ccache gettext libssl-dev xsltproc wget libxml-parser-perl
