sex_chr_sub <- function(genes, criteria)

{
  mart <- useDataset("hsapiens_gene_ensembl", useMart("ensembl"))
  if(criteria == "ensembl"){

    gene_ids <- getBM(filters = "ensembl_gene_id", attributes = c("ensembl_gene_id", "hgnc_symbol","chromosome_name"), values = genes, mart = mart)


  }
  if(criteria == "symbol"){
    gene_ids <- getBM(filters = "hgnc_symbol", attributes = c("ensembl_gene_id", "hgnc_symbol","chromosome_name"), values = genes, mart = mart)
  }
  gene_ids <- gene_ids[gene_ids$chromosome_name %in% c("X","Y"),]
  return(gene_ids)
}
