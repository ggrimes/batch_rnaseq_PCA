


/*
run pca on batches
*/

process run_pca {

publishDir "results"

output:
  path("pca.html")

  script:
  """
  #!/usr/bin/R
  rmarkdown::render("scripts/pca.Rmd", "html_document")
  """

}
