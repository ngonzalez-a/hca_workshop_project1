## HCA Africa: Single-Cell RNA-Seq Computational Workshop, March 7, 2023
library(Seurat)
###Project 1 Colon
setwd("Computational_Projects/Project1")
### Let's load the data
matrix <- as.matrix(read.csv2(file = "counts.csv.gz",sep = ",",row.names = 1,header = T))
##Lets double check
matrix[1:5,1:5]
##Load metadata
metadata <- read.csv2(file = "metadata.csv",sep = ",",row.names = 1,header = T)
head(metadata)
##Lets create the seurat object
seuratObject <- CreateSeuratObject(counts = matrix, meta.data = metadata, project = "Project1")

##How many cells do we have? 

## Lets do QC! Use the practical from the previous day and
#check the seurat tutorial! https://satijalab.org/seurat/articles/pbmc3k_tutorial.html

## Once We QC and filter lets do normalization, scaling , PCA, clustering and umap!

## Identify Clusters! Hint: Check for  "Enterocytes" , "Cycling Cells"  , 
#"Enterocyte Progenitors" , "Enteroendocrine",  "Goblet",  "Immature Enterocytes",
#"Goblet",   "M cells"    ,    "TA cells"          "Stem" ,    "Tuft"     
#Use websites like https://singlecell.broadinstitute.org/single_cell and
#https://panglaodb.se/ (if cant connect use an online proxy) as well a protein tissue atlas 

## How many cell do we have in every condition and sample? Is there any batch effect? Do we need to integrate? 
#Tip use the practicals and the seurat tutorial https://satijalab.org/seurat/articles/integration_introduction.html

##How about per cluster/Cell type

##Lets play with Differential exppression

## Lets make pretty plots! 
#Check visualization from Seurat https://satijalab.org/seurat/articles/visualization_vignette.html and GGPlot2