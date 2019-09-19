#uncomment next line if you need to install hole punch package
#install.packages("remotes")
#remotes::install_github("karthik/holepunch")
library(holepunch)
#makes a compendium
write_compendium_description(package = "PracticeGit", 
                             description = "Practice using git")
# to write a description, with dependencies. Be sure to fill in placeholder text

# writes a docker file. Preserves the environment you are working in. E.g. version of R studio,
# version of packages 
write_dockerfile(maintainer = "james_smith") 
# To write a Dockerfile. It will automatically pick the date of the last 
# modified file, match it to that version of R and add it here. You can 
# override this by passing r_date to some arbitrary date
# (but one for which a R version exists).

generate_badge() # This generates a badge for your readme.

# ----------------------------------------------
# At this time 🙌 push the code to GitHub 🙌
# ----------------------------------------------

# And click on the badge or use the function below to get the build 
# ready ahead of time.
build_binder()
# 🤞🚀