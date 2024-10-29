#' Amino acid frequency plot
#'
#' @param aa_sequence An amino acid sequence in a string
#'
#' @return A plot of the frequency of the different amino acids within the sequence
#'
#' @importFrom ggplot2 ggplot aes geom_col theme_bw theme
#' @importFrom stringr str_split boundary str_count
#'
#' @export
#'
#' @examples
#' insulin <- "MALWMRLLPLLALLALWGPDPAAAFVNQHLCGSHLVEALYLVCGERGFFYTPKTRREAEDLQVGQVELGGGPGAGSLQPLALEGSLQKRGIVEQCCTSICSLYQLENYCN"
#' amino_acid_plot(insulin)
#' ssl3 <- "MKMRTIAKTSLALGLLTTGAITVTTQSVKAEKIQSTKVDKVPTLKAERLAMINITAGANSATTQAANTRQERTPKLEKAPNTNEEKTSASKIEKISQPKQEEQKTLNISATPAPKQEQSQTTTESTTPKTKVTTPPSTNTPQPMQSTKSDTPQSPTIKQAQTDMTPKYEDLRAYYTKPSFEFEKQFGFMLKPWTTVRFMNVIPNRFIYKIALVGKDEKKYKDGPYDNIDVFIVLEDNKYQLKKYSVGGITKTNSKKVNHKVELSITKKDNQGMISRDVSEYMITKEEISLKELDFKLRKQLIEKHNLYGNMGSGTIVIKMKNGGKYTFELHKKLQEHRMADVIDGTNIDNIEVNIK"
#' amino_acid_plot(ssl3)
amino_acid_plot <- function(aa_sequence){
  present_aa <- aa_sequence |>
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) |>
    as.character() |>
    unique()

  counts <- sapply(present_aa, function(amino_acid) stringr::str_count(string = aa_sequence, pattern =  amino_acid)) |>
    as.data.frame()

  colnames(counts) <- c("Counts")
  counts[["aa_sequence"]] <- rownames(counts)

  aa_count_plot <- counts |>
    ggplot2::ggplot(ggplot2::aes(x = aa_sequence, y = Counts, fill = aa_sequence)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw() +
    ggplot2::theme(legend.position = "none")

  return(aa_count_plot)
}
