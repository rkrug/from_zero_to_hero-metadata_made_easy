# Install Package dmdScheme -----------------------------------------------


## install.packages("remotes")
## remotes::install_github("Exp-Micro-Ecol-Hub/dmdScheme", ref = "shinyapp", build_opts = "")

## later, it should as aeasy as:
## install.packages("dmdScheme")

remotes::install_github("Exp-Micro-Ecol-Hub/dmdScheme", ref = "af204cac2a3d701d1d5fb8e845d56563bd555374", build_opts = "")
remotes::install_github("Exp-Micro-Ecol-Hub/emeScheme", ref = "593f35957f54bb93c7d6dadbcda9aff8a9832dbe", build_opts = "")

## remotes::install_github("Exp-Micro-Ecol-Hub/emeScheme", ref = "efdd9f7886146c127c90044e3879fef321c4499f", build_opts = "")

# Load Package ------------------------------------------------------------


library(emeScheme)


# Create example for this session -----------------------------------------

make_example("basic", schemeName = "emeScheme")

# View Scheme Definition --------------------------------------------------

read.csv("./basic/data/archiving_data/smell.csv")

# GUI Approach ------------------------------------------------------------


run_app()

## Experiment based
## Experiment sheet
## DataFileMetaData sheet
## other sheets
## specifications of properties
## DataFileMetaData special

## data directory


# R approach---------------------------------------------------------------


.rs.restartR()

library(emeScheme)

# Open new scheme-------- ------------------------------------------------


open_new_spreadsheet("emeScheme")


# Validate Metadata -------------------------------------------------------


validate("./basic/emeScheme.xlsx")

report("./basic/emeScheme.xlsx")


# Export to xml -----------------------------------------------------------


emeScheme_to_xml("./basic/emeScheme.xlsx", file = "./basic/test")


