#' Convert DNA to RNA sequence
#'
#' @param DNA_sequence Sequence of DNA nucleotides containing letters "A", "C", "G" and "T"
#'
#' @return Sequence of RNA nucleotides containing letters "A", "C", "G" and "U"
#' @export
#'
#' @examples convert_T_to_U("ACGTTGCA")
convert_T_to_U <- function(DNA_sequence){
  RNA_sequence <- gsub("T", "U", DNA_sequence)
  return(RNA_sequence)
}
