FROM jupyter/scipy-notebook:612aa5710bf9
USER root

RUN apt-get update \
    &&  apt-get install -y \
        wget \
        zip \
        build-essential \
        gfortran

ARG NB_USER=jovyan
ARG NB_UID=1000
ENV USER ${NB_USER}
ENV NB_UID ${NB_UID}
ENV HOME /home/${NB_USER}

RUN chown -R ${NB_UID} ${HOME}
USER ${NB_USER}
   

RUN pip install https://github.com/modflowpy/pymake/zipball/master \
    && git clone https://github.com/modflowpy/pymake.git --single-branch --branch master  \
    && python pymake/examples/buildall.py   --fflags='-O3'

USER root
RUN  find ${HOME} -maxdepth 1 -executable -type f -exec mv '{}' /usr/local/bin/ \; \
     && rm -rf ${HOME}/temp/

RUN apt-get install libgdal-dev -y
USER ${NB_USER}
COPY environment.yml ./
RUN  conda env update -f ./environment.yml
