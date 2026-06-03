# Setup

options(warn = 2)

# Install necessary packages
packages <- c(
  "Middleton-Lab/abdData",
  "colorBlindness",
  "clauswilke/colorblindr",
  "concaveman",
  "cowplot",
  "Data4Ecologists",
  "easystats",
  "ggforce",
  "ggmap",
  "ggpubr",
  "ggrepel",
  "grid",
  "gridExtra",
  "jpeg",
  "latex2exp",
  "lemon",
  "lubridate",
  "paletteer",
  "palmerpenguins",
  "patchwork",
  "png",
  "readxl",
  "showtext",
  "tidyverse"
)

# pak::pak(packages)

# Lectures
qmds <- list.files(
  pattern = "^[0-9]+\\.[1-6].*qmd$",
  path = ".",
  full.names = TRUE
)

for (qq in qmds) {
  message("Processing ", qq)
  syscall <- paste0("quarto render ", qq, " --to revealjs")
  system(syscall)
}


## Problem sets

qmds <- list.files(
  pattern = "^PS_[0-9]+\\.[_Key]*.qmd$",
  path = "Problem_Sets",
  full.names = TRUE
)

for (qq in qmds) {
  message("Processing ", qq)
  syscall <- paste0("quarto render ", qq, " --to html")
  system(syscall)
}
