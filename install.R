install.packages("cowplot")
install.packages("Seurat")
install.packages("reticulate")
install.packages("anndata")
install.packages("devtools")

devtools::install_github("satijalab/seurat-data")
install.packages("https://seurat.nygenome.org/src/contrib/ifnb.SeuratData_3.0.0.tar.gz", repos = NULL, type = "source") 

install.packages("BiocManager")
BiocManager::install(c("LoomExperiment", "SingleCellExperiment"))
devtools::install_github("cellgeni/sceasy")
