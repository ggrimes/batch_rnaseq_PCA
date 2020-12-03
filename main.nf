params.out="${baseDir}/results"



run = Channel.fromPath("$baseDir/scripts/pca.Rmd")


process run_pca {

input:
  path(run)

  script:
  """
  #!/usr/bin/env Rscript
  library(rmarkdown)
  getwd()
  rmarkdown::render("${run}", "html_document",output_dir="${params.out}")
  """

}
