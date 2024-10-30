#' Convert DNA sequence to RNA sequence
#'
#' @param DNA_sequence a DNA sequence of nucleotides containing letters "A", "C", "G" and "T"
#'
#' @return a RNA sequence of nucleotides containing letters "A", "C", "G" and "U"
#' @export
#'
#' @examples
#' convert_T_to_U("ACGTTGCA")
convert_T_to_U <- function(DNA_sequence){
  RNA_sequence <- gsub("T", "U", DNA_sequence)
  return(RNA_sequence)
}
