# notes on the process of building a package
# Tim Law May 2021

devtools::load_all()

# check if we have the developer environment set up
devtools::has_devel()

# create an empty package
# want to put it in a fresh clean folder
usethis::create_package("~/Desktop/practicepackage")

# creating dev.R file as a notes on the processes ----
# -- ignore the dev.R file
# -- usethis::use_build_ignore("dev.R")

# ignore this file during building
# can also do git ignore
usethis::use_build_ignore("dev.R")

# set up git and git hub ----
# description will update with URL
usethis::use_git()
usethis::use_github()
usethis::use_github_action()

# create readme
usethis::use_readme_rmd()

# looking at the files ----
# ...ignore files ignores files for when things are created
# ex for buildignore, ignores files in zip creation
# DESCRIPTION is for publishing
# NAMESPACE is with the package::function, automatically updates
# R folder is where the chocolate chips go

# build pane ----
# check button
# checks package againts CRAN standards
# should keep checking!

# description files ----
# Version: 0.0.0.9000
# -- major, minor, minor, bug fixes
# -- version is not checked by CRAN

# Authors@R:
# -- must have "aut" and "cre"

# comment
# -- can add orcid ID

# licencse
# -- https://choosealicense.com/
usethis::use_mit_license(copyright_holder = "Timothy Law")

# make a new function ----
usethis::use_r("matrix_addition")
#-- code -> insert roxygen skeleton
#-- #' @export is a parameter when making function that makes function availble for users of the package
#-- omitting it does not make it outward facing
usethis::use_test("matrix_addition")
#-- looks for the test directory and runs all the tests
devtools::test()
