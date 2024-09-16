# Load rsconnect library
library(rsconnect)

# Define the path to your RMarkdown file
rmd_file <- "~/Projects/bwdsummit/Workshop/introR.Rmd"  # Change this to the path of your RMarkdown file

# Loop to redeploy the app 35 times with names introR1, introR2, ..., introR35
for (i in 1:35) {
  # Create the app name dynamically, e.g., introR1, introR2, ..., introR35
  app_name <- paste0("introR", i)
  
  message(paste("Deploying app:", app_name))
  
  # Deploy the app, replacing the existing app with forceUpdate = TRUE
  rsconnect::deployApp(
    appDir = rmd_file,   # Path to the RMarkdown file
    appName = app_name,  # Dynamic app name for each iteration
    forceUpdate = TRUE   # Ensure existing app is replaced
  )
  
  message(paste("App", app_name, "deployed successfully!"))
}
