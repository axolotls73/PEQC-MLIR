# Auto-generated Dockerfile for target: peqc-mlir-2026-llvm23
# Modules (in order): base-ubuntu, pocc-build-packages, user, mlir-air-bundle, editors, past-bundle, peqc-mlir-release-on-opt, ubuntu-user, interactive, peqc-mlir-2026-llvm23
# DO NOT EDIT - regenerate with gen-dockerfile.py

# --- module 'base-ubuntu' (base-ubuntu.df) ---
# -----------------------------------------------------------------------------
# Base Ubuntu image
# -----------------------------------------------------------------------------

ARG UBUNTU_VERSION=22.04
ARG UBUNTU_VERSION=22.04
ARG DOCKER_USER=default_username
ARG DOCKER_UID=12000
ARG DOCKER_GID=12000
ARG APT_MIRROR_DEFAULT=archive.ubuntu.com
ARG APT_MIRROR_SECURITY=security.ubuntu.com
FROM ubuntu:${UBUNTU_VERSION} AS base

## All project variables and default values, base-ubuntu is a dependence
## for all, that may be needed at multiple places.

ENV DEBIAN_FRONTEND=noninteractive \
    LANG=C.UTF-8 \
    LC_ALL=C.UTF-8

ARG DOCKER_USER=default_username
ARG DOCKER_UID=12000
ARG DOCKER_GID=12000

ARG APT_MIRROR_DEFAULT=archive.ubuntu.com
ARG APT_MIRROR_SECURITY=security.ubuntu.com

RUN sed -i \
    "s|archive.ubuntu.com|${APT_MIRROR_DEFAULT}|g; s|security.ubuntu.com|${APT_MIRROR_SECURITY}|g" \
    /etc/apt/sources.list

## Default base packages
RUN apt-get update && apt-get install -y --no-install-recommends \
        ca-certificates curl git gnupg build-essential pkg-config nano \
	unzip m4 wget \
    && rm -rf /var/lib/apt/lists/*

## /opt /projects and /data are meant to be volumes later on, /local not
RUN mkdir -p /projects /data /opt /local && \
    chmod 777 /opt && chmod 777 /local

## Default build user is root
ENV DEFAULT_BUILD_USER=root
ENV DEFAULT_BUILD_HOME=/root

## Setup loader directory for tool loader scripts
RUN mkdir /local/loaders && chmod 777 /local/loaders

## Add loader directories to PATH
RUN echo 'export PATH=$PATH:/local/loaders:/opt/loaders' >> ${DEFAULT_BUILD_HOME}/.bashrc
RUN echo 'export PATH=$PATH:/local/loaders:/opt/loaders' >> ${DEFAULT_BUILD_HOME}/.profile
RUN echo 'export PATH=$PATH:/local/loaders:/opt/loaders' >> /local/loaders/.${DEFAULT_BUILD_USER}.bashrc
RUN echo 'export PATH=$PATH:/local/loaders:/opt/loaders' >> /local/loaders/.${DEFAULT_BUILD_USER}.profile

## Copy install-scripts
COPY install-scripts /local/install-scripts

# --- module 'pocc-build-packages' (pocc-build-packages.df) ---
# -----------------------------------------------------------------------------
# Packages to build PoCC and any of its modules
# -----------------------------------------------------------------------------


USER root

## Add base packages to build pocc-devel, ie all for documentation too
RUN apt-get update && apt-get install -y --no-install-recommends \
gcc g++ g++-multilib gfortran flex bison automake autoconf libtool pkg-config make perl doxygen texinfo texlive-latex-extra git subversion \
    && rm -rf /var/lib/apt/lists/*

# --- module 'user' (addusers.df) ---
# -----------------------------------------------------------------------------
# Non-root user and mount points
# -----------------------------------------------------------------------------

USER root

## Add sudo
RUN apt-get update && apt-get install -y --no-install-recommends \
        sudo \
    && rm -rf /var/lib/apt/lists/*


## Set a user identical to caller, passing an argument to docker build
# Create a group and user
RUN addgroup --gid $DOCKER_GID $DOCKER_USER && \
    adduser  --uid $DOCKER_UID --gid $DOCKER_GID \
             --home /home/$DOCKER_USER \
             --shell /bin/bash \
             --disabled-password --gecos "" \
             $DOCKER_USER

## Create default dev user for claude code
RUN useradd -m -s /bin/bash dev

## Make docker_user and dev sudo w/o password
RUN echo "dev ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers.d/$DOCKER_USER && chmod 0440 /etc/sudoers.d/$DOCKER_USER
RUN apt-get update && apt-get install -y sudo && \
    echo "$DOCKER_USER ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers.d/$DOCKER_USER && \
    chmod 0440 /etc/sudoers.d/$DOCKER_USER

## /projects and /data are meant to be volumes later on, /local not
RUN chown -R $DOCKER_UID:$DOCKER_GID /projects /data


ENV DEFAULT_BUILD_USER=${DOCKER_USER}
ENV DEFAULT_BUILD_HOME=/home/${DOCKER_USER}

# --- module 'mlir-air-bundle' (mlir-air-bundle.df) ---
ENV PEQC_MLIR_BUNDLE_DIR=/opt/mlir/peqc-mlir/2026
ENV PEQC_MLIR_GITHUB_REPO=https://github.com/axolotls73/PEQC-MLIR.git
ENV PEQC_MLIR_GIT_GITHUB_BRANCH=1.0-airaie-2026-llvm23
ENV PEQC_MLIR_GIT_DIRNAME=peqc-mlir-${PEQC_MLIR_GIT_GITHUB_BRANCH}
ENV PAST_BUNDLE_DIR=${BUNDLE_DIR}/past-devel
# -----------------------------------------------------------------------------
# Bundle mlir-air 2026 in image.
# -----------------------------------------------------------------------------

## From https://xilinx.github.io/mlir-air/buildingRyzenLin.html

## Add packages.
USER root

RUN apt-get update && apt-get install -y --no-install-recommends \
 ninja-build clang lld unzip python3 python3-pip python3-dev python3-venv cmake

## Install.
USER ${DEFAULT_BUILD_USER}

ARG BUNDLE_DIR=/local
ENV BUNDLE_DIR=/local
ENV BUNDLE_DIR=/local
ARG MLIR_BUNDLE_DIR=mlir
ENV MLIR_BUNDLE_DIR=mlir
ENV MLIR_BUNDLE_DIR=mlir
ARG MLIR_AIR_BUNDLE_DIR=${BUNDLE_DIR}/${MLIR_BUNDLE_DIR}/amd
ENV MLIR_AIR_BUNDLE_DIR=${BUNDLE_DIR}/${MLIR_BUNDLE_DIR}/amd
ENV MLIR_AIR_BUNDLE_DIR=${BUNDLE_DIR}/${MLIR_BUNDLE_DIR}/amd
ARG MLIR_AIR_GITHUB_REPO=https://github.com/Xilinx/mlir-air.git
ENV MLIR_AIR_GITHUB_REPO=https://github.com/Xilinx/mlir-air.git
ARG MLIR_AIR_GITHUB_2026_GIT_COMMIT=3f0a65a324b267cb27f2df9fa862a4e76ca0a71f
ENV MLIR_AIR_GITHUB_2026_GIT_COMMIT=35c04f69f53802b5a5987bb2f3c4fca08b348203
## June 2:
#35c04f69f53802b5a5987bb2f3c4fca08b348203

## Module-specific variable, to tolerate multiple versions in one install.
ARG MLIR_AIR_2026_BUNDLE_DIR=${MLIR_AIR_BUNDLE_DIR}/2026
ENV MLIR_AIR_2026_BUNDLE_DIR=${MLIR_AIR_BUNDLE_DIR}/2026
ENV MLIR_AIR_2026_BUNDLE_DIR=/opt/mlir/amd/2026

## Fetch
RUN mkdir -p ${MLIR_AIR_2026_BUNDLE_DIR} && cd ${MLIR_AIR_2026_BUNDLE_DIR} && \
    git clone ${MLIR_AIR_GITHUB_REPO} && \
    cd ${MLIR_AIR_2026_BUNDLE_DIR}/mlir-air && \
    git checkout ${MLIR_AIR_GITHUB_2026_GIT_COMMIT}

## Install
RUN cd ${MLIR_AIR_2026_BUNDLE_DIR}/mlir-air && \
  bash -c 'set -e; set -o pipefail; \
    source utils/setup_python_packages.sh && \
    python3 -m pip install mlir_aie -f https://github.com/Xilinx/mlir-aie/releases/expanded_assets/latest-wheels-3 && \
    ./utils/build-mlir-air-using-wheels.sh'

#RUN printf '. %s/mlir-air/sandbox/bin/activate\n' "${MLIR_AIR_2026_BUNDLE_DIR}" > ${MLIR_AIR_2026_BUNDLE_DIR}/mlir_air_2026_environment.sh
RUN cd ${MLIR_AIR_2026_BUNDLE_DIR}/mlir-air && \
  . utils/setup_python_packages.sh && \
   printf '. '"${MLIR_AIR_2026_BUNDLE_DIR}/mlir-air/"'utils/env_setup.sh %s/mlir-air/install $(python3 -m pip show mlir_aie | grep Location | awk '\''{print $2}'\'')/mlir_aie $(python3 -m pip show llvm-aie | grep Location | awk '\''{print $2}'\'')/llvm-aie '"${MLIR_AIR_2026_BUNDLE_DIR}/mlir-air/"'my_install/mlir\n' "${MLIR_AIR_2026_BUNDLE_DIR}" > ${MLIR_AIR_2026_BUNDLE_DIR}/mlir_air_2026_environment.sh

## Put in loaders
RUN cat ${MLIR_AIR_2026_BUNDLE_DIR}/mlir_air_2026_environment.sh \
        >> ${DEFAULT_BUILD_HOME}/.bashrc 
RUN cat ${MLIR_AIR_2026_BUNDLE_DIR}/mlir_air_2026_environment.sh \
        >> ${DEFAULT_BUILD_HOME}/.profile 
RUN mkdir -p /local/loaders
RUN cat ${MLIR_AIR_2026_BUNDLE_DIR}/mlir_air_2026_environment.sh \
        >> /local/loaders/.${DEFAULT_BUILD_USER}.bashrc
RUN cat ${MLIR_AIR_2026_BUNDLE_DIR}/mlir_air_2026_environment.sh \
        >> /local/loaders/.${DEFAULT_BUILD_USER}.profile
RUN echo '#!/bin/sh' > /local/loaders/mlir-air-2026-bundle.sh
RUN cat ${MLIR_AIR_2026_BUNDLE_DIR}/mlir_air_2026_environment.sh \
        >> /local/loaders/mlir-air-2026-bundle.sh

# --- module 'editors' (editors.df) ---
# -----------------------------------------------------------------------------
# Editors
# -----------------------------------------------------------------------------

USER root

RUN apt-get update && apt-get install -y --no-install-recommends vim emacs time

# --- module 'past-bundle' (past-release-bundle.df) ---
# -----------------------------------------------------------------------------
# Bundle PAST in image
# -----------------------------------------------------------------------------

USER ${DEFAULT_BUILD_USER}

ARG BUNDLE_DIR=/local
ENV BUNDLE_DIR=/local
ARG PAST_BUNDLE_DIR=${BUNDLE_DIR}/past-devel
ENV PAST_BUNDLE_DIR=${BUNDLE_DIR}/past-devel
ARG PAST_BUNDLE_INSTALL_DIR=${PAST_BUNDLE_DIR}/install
ENV PAST_BUNDLE_INSTALL_DIR=${PAST_BUNDLE_DIR}/install

ARG PAST_WEB_PREFIX=https://sourceforge.net/projects/pocc/files/1.6/testing/modules/unstable-testing
ENV PAST_WEB_PREFIX=https://sourceforge.net/projects/pocc/files/1.6/testing/modules/unstable-testing
ARG PAST_WEB_VERSION=past-0.7.3-peqc-mlir
ENV PAST_WEB_VERSION=past-0.7.3-peqc-mlir
ARG PAST_WEB_ARCHIVE=${PAST_WEB_VERSION}.tar.gz
ENV PAST_WEB_ARCHIVE=${PAST_WEB_VERSION}.tar.gz

## Fetch
RUN mkdir -p ${PAST_BUNDLE_DIR} && cd ${PAST_BUNDLE_DIR} && wget ${PAST_WEB_PREFIX}/${PAST_WEB_ARCHIVE} 
## Expand
RUN cd ${PAST_BUNDLE_DIR} && tar xzf ${PAST_WEB_ARCHIVE}
## Patch if needed (needed for 0.7.3-peqc-mlir, trunk not needed)
RUN cd ${PAST_BUNDLE_DIR}/${PAST_WEB_VERSION} && \
    sed -i "$(grep -n 'happens_before.h' past/Makefile.am | sed -n 2p | cut -d: -f1)d" past/Makefile.am && \
    sed -i "$(grep -n 'happens_before.h' past/Makefile.in | sed -n 2p | cut -d: -f1)d" past/Makefile.in

## Install
RUN cd ${PAST_BUNDLE_DIR}/${PAST_WEB_VERSION} && \
    ./configure --prefix=${PAST_BUNDLE_INSTALL_DIR} && make install

## Put in loaders
RUN printf 'export PATH=%s:$PATH\n' "${PAST_BUNDLE_INSTALL_DIR}/bin" \
        >> ${DEFAULT_BUILD_HOME}/.bashrc
RUN printf 'export PATH=%s:$PATH\n' "${PAST_BUNDLE_INSTALL_DIR}/bin" \
        >> ${DEFAULT_BUILD_HOME}/.profile
RUN mkdir -p /local/loaders
RUN printf 'export PATH=%s:$PATH\n' "${PAST_BUNDLE_INSTALL_DIR}/bin" \
        >> /local/loaders/.${DEFAULT_BUILD_USER}.bashrc
RUN printf 'export PATH=%s:$PATH\n' "${PAST_BUNDLE_INSTALL_DIR}/bin" \
        >> /local/loaders/past-bundle.sh
RUN printf 'export PATH=%s:$PATH\n' "${PAST_BUNDLE_INSTALL_DIR}/bin" \
        >> /local/loaders/.${DEFAULT_BUILD_USER}.profile

# --- module 'peqc-mlir-release-on-opt' (peqc-mlir-bundle.df) ---
# -----------------------------------------------------------------------------
# Bundle peqc-mlir 2026 in image.
# -----------------------------------------------------------------------------

## From https://github.com/axolotls73/PEQC-MLIR

## Add packages.
USER root

RUN apt-get update && apt-get install -y --no-install-recommends \
     ninja-build clang lld unzip cmake python3-pip python3-dev git

## Install.
USER ${DEFAULT_BUILD_USER}

ARG BUNDLE_DIR=/local
ENV BUNDLE_DIR=/local
ARG MLIR_BUNDLE_DIR=mlir
ENV MLIR_BUNDLE_DIR=mlir
ARG PEQC_MLIR_BUNDLE_DIR=${BUNDLE_DIR}/${MLIR_BUNDLE_DIR}/peqc-mlir
ENV PEQC_MLIR_BUNDLE_DIR=/opt/mlir/peqc-mlir/2026
ARG PEQC_MLIR_GITHUB_REPO=https://github.com/axolotls73/PEQC-MLIR.git
ENV PEQC_MLIR_GITHUB_REPO=https://github.com/axolotls73/PEQC-MLIR.git
ARG PEQC_MLIR_GIT_GITHUB_BRANCH=main
ENV PEQC_MLIR_GIT_GITHUB_BRANCH=1.0-airaie-2026-llvm23
ARG PEQC_MLIR_GIT_DIRNAME=peqc-mlir-${PEQC_MLIR_GIT_GITHUB_BRANCH}
ENV PEQC_MLIR_GIT_DIRNAME=peqc-mlir-${PEQC_MLIR_GIT_GITHUB_BRANCH}


## Fetch
RUN mkdir -p ${PEQC_MLIR_BUNDLE_DIR} && cd ${PEQC_MLIR_BUNDLE_DIR} && \
    git clone ${PEQC_MLIR_GITHUB_REPO} ${PEQC_MLIR_GIT_DIRNAME} && \
    cd ${PEQC_MLIR_GIT_DIRNAME} && \
    git checkout ${PEQC_MLIR_GIT_GITHUB_BRANCH}

## Patch

## Require MLIR-AIR 2026
ARG MLIR_AIR_BUNDLE_DIR=${BUNDLE_DIR}/${MLIR_BUNDLE_DIR}/amd
ENV MLIR_AIR_BUNDLE_DIR=${BUNDLE_DIR}/${MLIR_BUNDLE_DIR}/amd
ARG MLIR_AIR_2026_BUNDLE_DIR=${MLIR_AIR_BUNDLE_DIR}/2026
ENV MLIR_AIR_2026_BUNDLE_DIR=/opt/mlir/amd/2026

## Require past
ARG PAST_BUNDLE_DIR=${BUNDLE_DIR}/past-devel
ENV PAST_BUNDLE_DIR=${BUNDLE_DIR}/past-devel

## Configure
RUN cd ${PEQC_MLIR_BUNDLE_DIR}/${PEQC_MLIR_GIT_DIRNAME} && \
    bash -c 'source /local/loaders/mlir-air-2026-bundle.sh && \
    cd ${PEQC_MLIR_BUNDLE_DIR}/${PEQC_MLIR_GIT_DIRNAME} && \
    mkdir -p build && cd build && \
    cmake -G Ninja .. \
      -DLLVM_DIR='"${MLIR_AIR_2026_BUNDLE_DIR}"'/mlir-air/my_install/mlir/lib/cmake/llvm \
      -DMLIR_DIR='"${MLIR_AIR_2026_BUNDLE_DIR}"'/mlir-air/my_install/mlir/lib/cmake/mlir \
      -DAIR_DIR='"${MLIR_AIR_2026_BUNDLE_DIR}"'/mlir-air \
      -DMLIR_AIE_DIR='"${MLIR_AIR_2026_BUNDLE_DIR}"'/mlir-air/sandbox/lib/python3.10/site-packages/mlir_aie \
      -DPAST_DIR='"${PAST_BUNDLE_DIR}"'/install \
      -DLLVM_EXTERNAL_LIT='"${MLIR_AIR_2026_BUNDLE_DIR}"'/mlir-air/sandbox/bin/lit'

## Build
RUN cd ${PEQC_MLIR_BUNDLE_DIR}/${PEQC_MLIR_GIT_DIRNAME}/build && \
  bash -c 'source /local/loaders/mlir-air-2026-bundle.sh && \
  cmake --build . --target mlir-doc'
RUN cd ${PEQC_MLIR_BUNDLE_DIR}/${PEQC_MLIR_GIT_DIRNAME}/build && \
  bash -c 'source /local/loaders/mlir-air-2026-bundle.sh; \
  cmake --build . --target check-verif || true'


#RUN cd ${PEQC_MLIR_BUNDLE_DIR}/${PEQC_MLIR_GIT_DIRNAME} && \
#  source install-and-build.sh /opt/mlir-air/llvm/build/lib/cmake /opt/mlir-air

## Put in loaders
ENV PEQC_MLIR_INSTALL_DIR=${PEQC_MLIR_BUNDLE_DIR}/${PEQC_MLIR_GIT_DIRNAME}/build
RUN printf 'export PATH=%s:$PATH\n' "${PEQC_MLIR_INSTALL_DIR}/bin" \
        >> ${DEFAULT_BUILD_HOME}/.bashrc 
RUN printf 'export PATH=%s:$PATH\n' "${PEQC_MLIR_INSTALL_DIR}/bin" \
        >> ${DEFAULT_BUILD_HOME}/.profile 
RUN mkdir -p /local/loaders
RUN printf 'export PATH=%s:$PATH\n' "${PEQC_MLIR_INSTALL_DIR}/bin" \
        >> /local/loaders/.${DEFAULT_BUILD_USER}.bashrc
RUN printf 'export PATH=%s:$PATH\n' "${PEQC_MLIR_INSTALL_DIR}/bin" \
        >> /local/loaders/.${DEFAULT_BUILD_USER}.profile
RUN echo '#!/bin/sh' > /local/loaders/peqc-mlir-bundle.sh
RUN printf 'export PATH=%s:$PATH\n' "${PEQC_MLIR_INSTALL_DIR}/bin" \
        >> /local/loaders/peqc-mlir-bundle.sh

# --- module 'ubuntu-user': no fragment (grouping only) ---

# --- module 'interactive': no fragment (grouping only) ---

# --- module 'peqc-mlir-2026-llvm23': no fragment (grouping only) ---

