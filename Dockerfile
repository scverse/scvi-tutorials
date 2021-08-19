FROM continuumio/miniconda3

ENTRYPOINT ["/bin/bash", "-c"]
RUN apt-get -y update && \
    apt-get -y upgrade && \
    apt-get -y install \
    build-essential \
        libcurl4-gnutls-dev \
     libxml2-dev \
     libssl-dev \
     libcairo-dev \
     libffi-dev \
     pkg-config \
     python-dev \
     python-pip \
     zlib1g-dev \
    apt-utils \
    unzip

RUN apt-get -y install software-properties-common && \
    apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-key 'E19F5F87128899B192B1A2C2AD5F960A256A04AF' && \
    add-apt-repository 'deb https://cloud.r-project.org/bin/linux/debian buster-cran40/' && \
    apt-get -y update && \
    apt-get install -y r-base

COPY environment.yml .

RUN conda env create -f environment.yml

#################################################################################
RUN R -e "install.packages('devtools')" &&\
    R -e "library(devtools)" && \
    R -e "install.packages('cowplot')" && \
    R -e "install.packages('Seurat')" && \
    R -e "install.packages('reticulate')" && \
    R -e "install.packages('devtools')" && \
    R -e "devtools::install_github('satijalab/seurat-data')" && \
    R -e "library(SeuratData)" && \
    R -e "InstallData('pbmc3k')" && \
    R -e "install.packages('https://seurat.nygenome.org/src/contrib/ifnb.SeuratData_3.0.0.tar.gz', repos = NULL, type = 'source')" && \
    R -e "InstallData('ifnb')" && \
    R -e "install.packages('BiocManager')" && \
    R -e "BiocManager::install(c('LoomExperiment', 'SingleCellExperiment'))" && \
    R -e "devtools::install_github('cellgeni/sceasy');"

