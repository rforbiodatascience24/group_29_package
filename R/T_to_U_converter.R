#' T_to_U_converter
#'
#' @param dna_sequence sequence of nucleotides containing letters "A", "C", "G" and "T" - a DNA sequence
#'
#' @return sequence of nucleotides containing letters "A", "C", "G" and "U" - a RNA sequence
#' @export
#'
#' @examples
#' T_to_U_converter("ACGTTGCA")
T_to_U_converter <- function(dna_sequence){
  rna_sequence <- gsub("T", "U", dna_sequence)
  return(rna_sequence)
}
