pam_mdl <- function(vsd_mat){
  mdl <- pam(vsd_mat, metric = "euclidean",2)

  retun(mdl)
}
