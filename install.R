install.packages("cowplot")
install.packages("Seurat")
install.packages("reticulate")
install.packages("anndata")
install.packages("devtools")

devtools::install_github("satijalab/seurat-data")
InstallData("pbmc3k")
install.packages("https://seurat.nygenome.org/src/contrib/ifnb.SeuratData_3.0.0.tar.gz", repos = NULL, type = "source") 
InstallData("ifnb")

install.packages("BiocManager")
BiocManager::install(c("LoomExperiment", "SingleCellExperiment"))
devtools::install_github("cellgeni/sceasy")
