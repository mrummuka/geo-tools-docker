Author: @mrummuka

Description: Docker image for minimal execution environment for geo-* Linux geocaching tools by Rick Rickhardson.

Origin of Linux geocaching tools:  http://geo.rkkda.com/


# Usage: 

## Prepare image
Downloads and installs necessary dependencies, builds geo-* tools and installs them into Docker container

### Clone repo 
`$ git clone https://github.com/mrummuka/geo-tools-docker.git`

### Set config 
* Edit .georc config file before building image

### Build image
`$ docker build -t mrummuka/geo-tools-docker:v1 .`


## Running
### Run geo-* tools one directly
`$ docker run --rm mrummuka/geo-tools-docker:v1 geo-nearest`

### or run geo-* tools interactively
`$ docker run --rm -it mrummuka/geo-tools-docker:v1 "/bin/bash"`
`# geo-nearest`
 
