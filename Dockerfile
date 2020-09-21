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
ENV WORKDIR $HOME/work


COPY . ${WORKDIR}
RUN chown -R ${NB_UID} ${HOME}
USER ${NB_USER}

WORKDIR ${WORKDIR}
RUN  pip install https://github.com/modflowpy/pymake/zipball/master \
    && git clone --single-branch --branch master https://github.com/modflowpy/pymake.git  \
    && python pymake/buildall.py   --fflags='-O3' 

RUN pip install flopy pyvista
