# Install Package dmdScheme -----------------------------------------------


## install.packages("remotes")

remotes::install_github("Exp-Micro-Ecol-Hub/dmdScheme", ref = "af204cac2a3d701d1d5fb8e845d56563bd555374", build_opts = "")

## later, it should as aeasy as:
## install.packages("dmdScheme")


# Load Package ------------------------------------------------------------


library(dmdScheme)


# View Scheme Definition --------------------------------------------------


open_new_spreadsheet("dmdScheme", keepData = TRUE)


# Create and Open new Scheme for Definition ------------------------------------------


open_new_spreadsheet("dmdScheme", file = "newScheme.xlsx", keepData = TRUE)


# Edit the newScheme in Excel ---------------------------------------------


## Excel
## unlock Worksheets
## Change name to theNewScheme
## Change Version to v0.1.0
## Save Excel file


# Create new Scheme Package -----------------------------------------------


dev_make_new_scheme(schemeDefinition = 'newScheme.xlsx', path = '.')


# Edit theNewScheme -------------------------------------------------------


setwd("theNewScheme")
devtools::load_all(".")

readLines("DESCRIPTION")


# Edit Excel file `newScheme.xml` -----------------------------------------

## temperature to temperature_micro
## increase veersion to v0.1.1
## save file

# Update theNewScheme package ---------------------------------------------


dev_update_from_new_sheet("./../newScheme.xlsx")

readLines("DESCRIPTION")


# Build Package -----------------------------------------------------------


setwd("..")

devtools::build("./theNewScheme")


# Restart R ---------------------------------------------------------------


.rs.restartR()


# Load theNewScheme -------------------------------------------------------


library("theNewScheme")


# Install theNewScheme ----------------------------------------------------


install.packages( pkgs = "./theNewScheme_1.0.tar.gz", repos = NULL)


# Load theNewScheme -------------------------------------------------------


library("theNewScheme")


# Use theNewScheme --------------------------------------------------------


dmdScheme_versions()

dmdScheme_versions("theNewScheme")

open_new_spreadsheet("theNewScheme")


# Questions ---------------------------------------------------------------


 