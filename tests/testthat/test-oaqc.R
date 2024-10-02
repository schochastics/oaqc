test_that("oaqc works", {
    coC4 <- data.frame(
        source = c(0, 2),
        target = c(1, 3)
    )

    coC4orbits <- oaqc(coC4, non_ind_freq = FALSE)
    expect_true(all(coC4orbits$n_orbits_ind[, 4] == 1))
    expect_true(all(coC4orbits$e_orbits_ind[, 2] == 1))

    expect_error(oaqc("graph"))

    k4 <- as.matrix(data.frame(
        source = c(0, 0, 0, 1, 1, 2),
        target = c(1, 2, 3, 2, 3, 3)
    ))
    k4orbits <- oaqc(k4, non_ind_freq = FALSE)
    expect_true(all(k4orbits$n_orbits_ind[, 20] == 1))
    expect_true(all(k4orbits$e_orbits_ind[, 14] == 1))
})
