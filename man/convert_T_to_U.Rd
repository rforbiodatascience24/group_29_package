% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/convert_T_to_U.R
\name{convert_T_to_U}
\alias{convert_T_to_U}
\title{Convert DNA sequence to RNA sequence}
\usage{
convert_T_to_U(DNA_sequence)
}
\arguments{
\item{DNA_sequence}{a DNA sequence of nucleotides containing letters "A", "C", "G" and "T"}
}
\value{
a RNA sequence of nucleotides containing letters "A", "C", "G" and "U"
}
\description{
Convert DNA sequence to RNA sequence
}
\examples{
convert_T_to_U("ACGTTGCA")
}
