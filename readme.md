# deps-deploy

Docker container with pre-built WRF and WPS application and Intel runtime libraries. 

WRF and WPS are built using a [CIMA private repo](https://github.com/meteocima/dockers/tree/master/deps) because
the process uses Intel compilers.

Since these compilers are licensed to CIMA that docker image can not be 
made public. So this docker collects results of the build process there.

To compile `deps-deploy`, you have to manually copy the content
of the /BUILD directory of the private container, that will contains built applications.

The corresponding `deps-deploy` public image is already available on Docker Hub here: https://github.com/meteocima/deps-deploy

