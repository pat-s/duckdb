# installs dependencies, runs R CMD check, runs covr::codecov()
withr::with_dir("tools/rpkg",
  do_package_checks(error_on = "error")
)

if (ci_on_ghactions() && ci_has_env("BUILD_PKGDOWN")) {
  # creates pkgdown site and pushes to gh-pages branch
  # only for the runner with the "BUILD_PKGDOWN" env var set

  withr::with_dir("tools/rpkg",
    do_pkgdown()
  )
}
