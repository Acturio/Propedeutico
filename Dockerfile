FROM palmoreck/prope_python:v1

ENV HOME=/tmp

ARG NB_USER=miuser

ARG NB_UID=1000

ENV USER ${NB_USER}
ENV NB_UID ${NB_UID}
ENV HOME /home/${NB_USER}

COPY . ${HOME}
USER root
RUN chown -R ${NB_UID} ${HOME}
USER ${NB_USER}


CMD workon propedeutico
