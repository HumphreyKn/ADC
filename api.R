#Using R and the appropriate R package of your choice,
# access https://randomuser.me/ api and list the top 100 male users.

# loading the required libraries
library(httr)
library(jsonlite)

# getting the data from the api
api_url <- "https://randomuser.me"
params <- list(results = 100, gender = "male")


response <- GET(api_url, query = params)
content <- content(response, "text")


data <- fromJSON(api_url)


