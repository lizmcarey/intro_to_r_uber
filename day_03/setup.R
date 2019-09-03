#load and install required packages
pkgs <- c('tidyverse', 
          'fs', 
          'DT', 
          'lubridate',
          'ggthemes', 
          'stringr', 
          'knitr', 
          'kableExtra', 
          'qualtRics', 
          'plotly', 
          'prettydoc', 
          'glue', 
          'summarytools', 
          'broom', 
          'car', 
          'here', 
          'datapasta', 
          'janitor')

check <- sapply(pkgs,require,warn.conflicts = TRUE,character.only = TRUE)

if(any(!check)){
  pkgs.missing <- pkgs[!check]
  install.packages(pkgs.missing)
  check <- sapply(pkgs.missing,require,warn.conflicts = TRUE,character.only = TRUE)
}