# Author: Mika Rummukainen
# Description: Docker image for minimal execution environment for geo-* Linux geocaching tools by Rick Rickhardson.
# Origin of Linux geocaching tools:  http://geo.rkkda.com/
#
#
# Usage: 
#
#  ## Build image 
#  $ git clone git@github.com:mrummuka/geo-tools-docker.git
#  $ docker build -t mrummuka/geo-tools-docker:v1 .
#   * This downloads, compiles and installs latest version of geo-* geocaching tools to a docker image.
#
#  ### Set configuration 
#   * either manually copy or edit your configuration file .georc into ~/
#
#  ## Run geo-* tools 
#  ### one command at a time
#  $ docker run --rm mrummuka/geo-tools-docker:v1 /bin/bash "/root/bin/geo-nearest"
#
#  ### see what commands are available 
#  $ docker run --rm -t mrummuka/geo-tools-docker:v1 /bin/sh -c "ls /root/bin"
#
#  ### or interactively
#  $ docker run --rm -it mrummuka/geo-tools-docker:v1 "/bin/bash"
#  $ geo-nearest
#
# 
