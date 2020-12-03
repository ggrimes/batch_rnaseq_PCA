params.out="${baseDir}/results"



run = Channel.fromPath("$baseDir/scripts/pca.Rmd")

/*
run pca
*/
process run_pca {

input:
  conda "/home/u034/ggrimes/batch_rnaseq_PCA/pca-env"
  path(run)

  script:
  """
  #!/usr/bin/env Rscript
  library(rmarkdown)
  rmarkdown::render("${run}", "html_document",output_dir="${params.out}")
  """

}
