drop_bottom_ten <- function(vsd_mat){
  vsd_df <- as.data.frame(vsd_mat)
  vsd_df$var <- apply(vsd_mat,1,var)
  quant <- quantile(vsd_df$var, probs = 0.10)
  vsd_df <- vsd_df[vsd_df$var > quant,]
  n_cols <- ncol(vsd_df) - 1
  vsd_mat_fin <- vsd_df[, 1:n_cols]
  vsd_mat_fin <- as.matrix(vsd_mat_fin)
  return(vsd_mat_fin)
}
