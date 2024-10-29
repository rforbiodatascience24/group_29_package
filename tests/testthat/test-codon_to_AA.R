test_that("codon to AA translation works", {
  expect_equal(codon_to_AA(c("UUU", "UUC", "UUA")), "FFL")
})
