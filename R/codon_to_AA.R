#' codon_to_AA
#'
#' @param codons vector of codon indices to be translated to amino acids
#' @return function returns a amino acid sequence
#' @export
#' @examples
#' codon_to_AA(c("UUU", "UUC", "UUA"))
codon_to_AA <- function(codons){
  AA_sequence <- paste0(codon_table[codons], collapse = "")
  return(AA_sequence)
}
