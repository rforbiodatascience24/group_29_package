test_that("conversion works", {
  expect_equal(convert_T_to_U("ACGTTGCA"), "ACGUUGCA")
})
