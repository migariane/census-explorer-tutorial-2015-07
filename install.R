update.packages()
    
packages = c("choroplethr", "choroplethrMaps", "shiny")
if (length(setdiff(packages, rownames(installed.packages()))) > 0) 
{
  install.packages(setdiff(packages, rownames(installed.packages())))  
}

# lastly, make sure people are using a current version of R
r = R.Version()
if (r$major < "3" ||
    (r$major == "3" && r$minor < "2.0"))
{
  print(paste0(
    "The current version of R is 3.2.0, but you are using version ",
    r$major, ".", r$minor,
    ". Please google 'download R' and download the current version of R."
    ))
}

# now test
library(choroplethr)
library(choroplethrMaps)

data(df_pop_state)
print(state_choropleth(df_pop_state))
