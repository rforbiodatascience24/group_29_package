#' nucleotide_sequence_sampler
#'
#' @param sequence_length contains length of sample sequence.
#' @return function returns a sampled nucleotide string.
#' @export
#' @examples
#' example_sequence <- nucleotide_sequence_sampler(100)
#' print(example_sequence)
nucleotide_sequence_sampler <- function(sequence_length){
  nucleotide_samples <- sample(c("A", "T", "G", "C"), size = sequence_length, replace = TRUE)
  nucleotide_sequence <- paste0(nucleotide_samples, collapse = "")
  return(nucleotide_sequence)
}
