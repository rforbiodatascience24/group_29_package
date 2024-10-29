test_that("sequence has the correct length", {
  expect_equal(nchar(nucleotide_sequence_sampler(4)), 4)
})
