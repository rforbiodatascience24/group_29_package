#' Amino acid count in sequence plot
#'
#' @param aa_sequence Amino acid sequence in a character string
#'
#' @importFrom ggplot2 ggplot aes geom_col theme_bw theme
#' @importFrom stringr str_split boundary str_count
#'
#' @return A plot of the frequency of the different amino acids present in the sequence
#' @export
#'
#' @examples
#' INS <- "MALWMRLLPLLALLALWGPDPAAAFVNQHLCGSHLVEALYLVCGERGFFYTPKTRREAEDLQVGQVELGGGPGAGSLQPLALEGSLQKRGIVEQCCTSICSLYQLENYCN"
#' amino_acid_plot(INS)
#' entH <- "MINKIKILFSFLALLLSFTSYAKAEDLHDKSELTDLALANAYGQYNHPFIKENIKSDEISGEKDLIFRNQGDSGNDLRVKFATADLAQKFKNKNVDIYGASFYYKCEKISENISECLYGGTTLNSEKLAQERVIGANVWVDGIQKETELIRTNKKNVTLQELDIKIRKILSDKYKIYYKDSEISKGLIEFDMKTPRDYSFDIYDLKGENDYEIDKIYEDNKTLKSDDISHIDVNLYTKKKV"
#' amino_acid_plot(entH)
amino_acid_plot <- function(aa_sequence){
  aa_present <- aa_sequence |>
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) |> #Split strings for each character in a character matrix
    as.character() |> #Ensure all is character
    unique() #List of unique amino acids

  # Count amino acid frequency in sequence
  counts <- sapply(aa_present, function(amino_acid) stringr::str_count(string = aa_sequence, pattern =  amino_acid)) |>
    as.data.frame()

  # Rename column names and rownames
  colnames(counts) <- c("Counts")
  counts[["aa_sequence"]] <- rownames(counts)

  # Plot the counts, coloured by the sequence
  aa_count_plot <- counts |>
    ggplot2::ggplot(ggplot2::aes(x = aa_sequence, y = Counts, fill = aa_sequence)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw() +
    ggplot2::theme(legend.position = "none")

  return(aa_count_plot)
}
