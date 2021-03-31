# cimafoundation/deps-deploy
FROM debian:latest

ENV LANG=C.UTF-8 LC_ALL=C.UTF-8

RUN apt-get update --fix-missing
RUN apt-get install -y procps bzip2 ca-certificates curl git cpio build-essential file m4 wget vim less make tcsh perl

ADD BUILD /BUILD

RUN cd /tmp;                                                                                         \
 wget https://apt.repos.intel.com/intel-gpg-keys/GPG-PUB-KEY-INTEL-SW-PRODUCTS.PUB;                  \
 apt-key add GPG-PUB-KEY-INTEL-SW-PRODUCTS.PUB;                                                      \
 rm GPG-PUB-KEY-INTEL-SW-PRODUCTS.PUB;                                                               \
 echo "deb https://apt.repos.intel.com/oneapi all main" | tee /etc/apt/sources.list.d/oneAPI.list;   \
 apt update;                                                                                         \
 apt-get install -y 																				 \
  intel-oneapi-runtime-compilers-common																 \
  intel-oneapi-runtime-libs																			 \
  intel-oneapi-runtime-compilers																	 \
  intel-oneapi-runtime-fortran-common																 \
  intel-oneapi-runtime-fortran																		 \
  intel-oneapi-runtime-openmp-common																 \
  intel-oneapi-runtime-openmp																		 \
  intel-oneapi-runtime-mpi																			 \
  ;
  
