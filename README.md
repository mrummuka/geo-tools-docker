Author: @mrummuka

Description: Docker image for minimal execution environment for geo-* Linux geocaching tools by Rick Rickhardson.

Origin of Linux geocaching tools:  http://geo.rkkda.com/


# Usage: 

## Build image 
`$ git clone git@github.com:mrummuka/geo-tools-docker.git`

`$ docker build -t mrummuka/geo-tools-docker:v1 .`

* This downloads, compiles and installs latest version of geo-* geocaching tools to a docker image.

### Set configuration 
* copy configuration file .georc into ~/ or edit it manually

## Run geo-* tools 
### one command at a time
`$ docker run --rm mrummuka/geo-tools-docker:v1 /bin/bash "/root/bin/geo-nearest"`

### or interactively
#### view available commands
`$ docker run --rm -t mrummuka/geo-tools-docker:v1 /bin/sh -c "ls /root/bin"`

#### run from within docker 
`$ docker run --rm -it mrummuka/geo-tools-docker:v1 "/bin/bash"`
`$ geo-nearest`
 
