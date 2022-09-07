norm_function <- function(edat, pdat){
  DE_seq_obj        <- DESeqDataSetFromMatrix(countData = edat, colData = pdat, design = ~ case )
  DE_seq_obj        <- estimateSizeFactors(DE_seq_obj)
  normalized_counts <- counts(DE_seq_obj, normalized = TRUE)
  vst_de_seq_obj    <- vst(DE_seq_obj, blind =TRUE)
  vsd_mat           <- assay(vst_de_seq_obj)
  return(vsd_mat)
}
