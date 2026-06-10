FROM ubuntu:22.04
LABEL maintainer="pouchet@colostate.edu"
RUN apt-get update && apt-get upgrade -y && apt-get install -y apt-utils
RUN apt-get update && apt-get upgrade -y
RUN DEBIAN_FRONTEND="noninteractive" TZ="America/Denver" apt-get --fix-missing -y install tzdata automake autoconf
RUN apt-get update && apt-get upgrade -y
RUN DEBIAN_FRONTEND="noninteractive" TZ="America/Denver" apt-get --fix-missing -y install libtool make wget subversion git 
RUN apt-get update && apt-get upgrade -y
RUN DEBIAN_FRONTEND="noninteractive" TZ="America/Denver" apt-get --fix-missing -y install doxygen texinfo bison flex perl gcc g++ gfortran zsh python2 rsync
RUN apt-get update && apt-get upgrade -y
RUN DEBIAN_FRONTEND="noninteractive" TZ="America/Denver" apt-get --fix-missing -y install x11-apps libxtst-dev pkg-config
#RUN DEBIAN_FRONTEND="noninteractive" TZ="America/Denver" apt-get -y install tzdata automake autoconf libtool pkg-config make wget subversion git doxygen texinfo bison flex perl gcc g++ gfortran x11-apps zsh libxtst-dev python3
### Vitis Tools prerequisite libraries
RUN DEBIAN_FRONTEND="noninteractive" TZ="America/Denver" apt-get -y install libc6-dev-i386 net-tools graphviz make unzip g++ libtinfo5 xvfb git libncursesw5 libc6-dev-i386 locales locales-all mesa-utils libgl1-mesa-glx
ENV LC_ALL en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8
RUN apt-get update && apt-get upgrade -y
RUN DEBIAN_FRONTEND="noninteractive" TZ="America/Denver" apt-get -y install libeclipse-e4-ui-swt-gtk-java 
### ROSE stuff
RUN apt-get update && apt-get upgrade -y
RUN DEBIAN_FRONTEND="noninteractive" TZ="America/Denver" apt-get install -y git wget make automake libtool gcc g++ libboost-all-dev flex bison ghostscript nano gcc-9 g++-9 gfortran-9 g++-9-multilib gcc-9-doc gcc-9-multilib gfortran-9-multilib pigz
## Merlin stuff
RUN apt-get update && apt-get upgrade -y
RUN DEBIAN_FRONTEND="noninteractive" TZ="America/Denver" apt-get install -y cmake libncurses-dev zip lsb-release opencl-headers 
## Polyopt stuff
RUN apt-get update && apt-get upgrade -y
RUN DEBIAN_FRONTEND="noninteractive" TZ="America/Denver" apt-get install -y libswitch-perl
## Xilinx XRT build deps.
RUN apt-get update && apt-get upgrade -y
RUN DEBIAN_FRONTEND="noninteractive" TZ="America/Denver" apt-get install -y cmake cppcheck curl dkms g++ gcc gdb git gnuplot graphviz libboost-dev libboost-filesystem-dev libboost-program-options-dev libcurl4-openssl-dev libdrm-dev libdw-dev libelf-dev libffi-dev libgtest-dev libjpeg-dev libjson-glib-dev libncurses5-dev libopencv-core-dev libpng-dev libprotoc-dev libssl-dev libsystemd-dev libtiff5-dev libudev-dev libyaml-dev linux-libc-dev lm-sensors lsb-release make ocl-icd-dev ocl-icd-libopencl1 ocl-icd-opencl-dev opencl-headers pciutils perl rapidjson-dev pkg-config protobuf-compiler python3 libpython3-dev python3-breathe python3-pip python3-sphinx python3-sphinx-rtd-theme sphinx-common strace unzip uuid-dev
## Common editors.
RUN apt-get update && apt-get upgrade -y
RUN DEBIAN_FRONTEND="noninteractive" TZ="America/Denver" apt-get install -y nano vim emacs
## apt-get install build-essential? 
## Set bash as default sh instead of dash, Merlin scripts complain otherwise.
RUN echo "dash dash/sh boolean false" | debconf-set-selections
RUN DEBIAN_FRONTEND=noninteractive dpkg-reconfigure dash
## Set /usr/bin/python to python2, ugly way
RUN ln -sf /usr/bin/python2 /usr/bin/python
## Copy the install files.
COPY install-files /root/install-files
## Other: 2023.2 and MLIR-AIR/AIE toolchain dependences.
RUN apt-get update && apt-get upgrade -y
RUN DEBIAN_FRONTEND="noninteractive" TZ="America/Denver" apt-get install -y libncurses5 libncurses5-dev libncursesw5 libncursesw5-dev libtinfo5 clang virtualenv python3.10-venv ninja-build libelf-dev libelf1 lld libc++-dev libc++abi-dev g++-12 gcc-12 libsysfs2 libsysfs-dev time
RUN pip3 install psutil rich pybind11 numpy
RUN ln -sf /usr/lib/x86_64-linux-gnu/libidn.so.12 /usr/lib/x86_64-linux-gnu/libidn.so.11
## Set a user identical to caller, passing an argument to docker build
ARG DOCKER_USER=default_username
ARG DOCKER_UID=12000
ARG DOCKER_GID=12000
# Create a group and user
RUN addgroup --system $DOCKER_USER --gid $DOCKER_GID && adduser --system $DOCKER_USER --uid $DOCKER_UID --gid $DOCKER_GID
RUN ln -sf /data-host-share /root/data-host-share
## Packages for polygeist
RUN DEBIAN_FRONTEND="noninteractive" TZ="America/Denver" apt-get install -y libgmp10 libgmp-dev libclang-11-dev llvm-11-tools llvm-11-dev llvm-15-tools ninja-build libbison-dev libtool  lsb-release wget software-properties-common gnupg
