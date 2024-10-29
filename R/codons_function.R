#' Function three
#'
#' @param dna description of parameter
#' @param start description of parameter
#'
#' @return description of function output
#' @export
#'
#' @examples
#' extract_codons("AGCTGACGTAG", start = 1)
extract_codons <- function(sequence, start = 1){
  lenght <- nchar(sequence)
  codons <- substring(sequence,
                      first = seq(from = start, to = lenght-3+1, by = 3),
                      last = seq(from = 3+start-1, to = lenght, by = 3))
  return(codons)
}
