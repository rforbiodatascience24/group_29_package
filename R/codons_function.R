#' Function three
#'
#' @param dna description of parameter
#' @param start description of parameter
#'
#' @return description of function output
#' @export
#'
#' @examples
dna_1 <- function(dna_2, start = 1){
  dna_3 <- nchar(dna_2)
  codons <- substring(dna_2,
                      first = seq(from = start, to = dna_3-3+1, by = 3),
                      last = seq(from = 3+start-1, to = dna_3, by = 3))
  return(codons)
}
