# SingleCell DiffTrack
Welcome to the repository of the ShinyApp from single cell RNAseq data. \
This repository contains the source code and documentation of the SingleCell DiffTrack ShinyApp for the Wild Type single cell RNAseq data from the publication: https://www.sciencedirect.com/science/article/pii/S2589004223021739

## Features
#### Visualization scripts
In the SingleCell_DiffTrack repository, two ShinyApp scripts can be found, one with ALK data (BruggemanTim_ShinyApp.R) and one without ALK data (BruggemanTim_ShinyApp_NoALK.R).
Also the datafiles and images used in both scripts can be found in this repository ending respectively with .rds and .png.
The DEGenes.RDS was used to make the DEGenes datatable, the sce_slingshot.rds was used to make the pseudotimeanalysis and the CellsOfInterest_SLB.rds has all the data for the ShinyApp_NoALK. Both DEGenes.RDS and sce_slingshot.rds were made out of the CellsOfInterest_SLB.rds.

#### Extra files needed
In the SupportScripts repository, the scripts that helped make the ShinyApps can be found. The DEGenes.R was used to make the DEGenes.rds for the DEGenes datatable.
The Pseudotime_Calculations.R was used to make the Pseudotime.png and the sce_slingshot.rds.
The Profiling.R script has the package profvis to identify and optimize the performance of the R script.
Also a .gitattributs can be found here, this was used to import the large .rds files to github.

## Installation/Publish app
The Publish_ShinyApp repository contains a shiny.yml file and a .md file. The shiny.yml file was used to make the Conda environment. More info about this file and on how to actually publish the ShinyApp on the vesalius.ugent.be server can be found in the publish_shinyapp.md file.

## Usage
The published ShinyApp can be found on https://ccgg.ugent.be/shiny/singlecell_difftrack/. For this app, the script BruggemanTim_ShinyApp_NoALK.R was used.
