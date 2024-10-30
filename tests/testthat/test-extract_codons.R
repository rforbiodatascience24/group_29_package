test_that("codon extraction works", {
  codons <- extract_codons("ACGUUGCA")
  expect_equal(codons, c("ACG", "UUG"))
})


test_that("Handles incomplete codon", {
  codons <- extract_codons("ACGUUG")
  expect_equal(codons, c("ACG", "UUG"))
})

test_that("Starting at different positions", {
  codons <- extract_codons("ACGUUGCA", start = 2)
  expect_equal(codons, c("CGU", "UGC"))
})
