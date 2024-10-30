#' Function three
#'
#' @param RNA_sequence gets extracted into codons of three nucleotide each
#'
#' @return strings of different codons each with three nucleotides from RNA sequence
#' @export
#'
#' @examples
#' RNA_sequence <- "ACGUUGCA"
#' extract_codons(RNA_sequence)
extract_codons <- function(RNA_sequence, start = 1){
  lenght <- nchar(RNA_sequence)
  codons <- substring(RNA_sequence,
                      first = seq(from = start, to = lenght-3+1, by = 3),
                      last = seq(from = 3+start-1, to = lenght, by = 3))
  return(codons)
}

