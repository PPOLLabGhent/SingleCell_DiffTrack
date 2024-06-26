### Diff gene analyse, script to make an RDSObject from with the output ###
###########################################################################

## load in packages##
#####################
library(Seurat)


## Loading in the data ##
#########################
#annot <- readRDS("/kyukon/data/gent/vo/000/gvo00027/PPOL/SharedData/2024_TimBruggeman/RDSObjects/ada_and_stefNoALK_dim20_res06_ANNOT.rds")
cell <- readRDS("/kyukon/data/gent/vo/000/gvo00027/PPOL/SharedData/2024_TimBruggeman/RDSObjects/CellsOfInterest_SLB.rds")


## diff gene analyse ##
#######################
Idents(cell) <- "CellType"

DimPlot(cell, reduction = "umap", label = TRUE)

# Define your comparison groups
comparison_groups <- c("Sympathoblasts", "CPC", "SCP", "ProlifSympathoblasts", "Bridging Cells")

# Initialize an empty list to store the results
all_results <- list()

# Loop through each comparison group and perform FindMarkers
for (group in comparison_groups) {
  result <- FindMarkers(cell, ident.1 = group)
  all_results[[group]] <- result
}
# saving the data in a .rds file
saveRDS(all_results, file = "DEGenes.RDS")
