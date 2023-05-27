#Using R and the appropriate R package of your choice, access https://randomuser.me/ api and 
#list the top 100 male users.

# loading the required libraries
library(httr)
library(jsonlite)

# getting the data from the api
api <- "https://randomuser.me/api"
params= list(results= 100, gender="male")

# make a request

response <- GET(api, query= params)

content <-  content(response, as= "text")
data <- fromJSON(content)

# Extract the user information
users <- data$results
top_100_male_users <- users[users$gender=="male",]

for (i in 1:nrow(top_100_male_users)) {
  user <- top_100_male_users[i,]
  cat("User",i, "\n")
  cat("Name:",user$name$title, user$name$first, user$name$last,"\n")
  cat("Email:", user$email,"\n")
  cat("Username:", user$login$username,"\n")
}

# Adding the info in a dataframe
# Create an empty dataframe
output_df <- data.frame(
  Name= character(),
  Email= character(),
  Username= character(),
  stringsAsFactors = F
)

#Populate the dataframe with the users information
for (i in 1:nrow(top_100_male_users)) {
  user <- top_100_male_users[i,]
  
  name=paste(user$name$title, user$name$first, user$name$last)
  email= user$email
  username=user$login$username
  
  output_df[i,1] <- name
  output_df[i,2] <- email
  output_df[i,3] <- username
}

result <- c("Hello World")

i <- 1
while(i<6){
  print(result)
  i=i+1
}



# Write a program that generates a random number between 1 and 10. Ask the user to 
# guess the number and provide feedback (higher, lower, or correct) until the user 
# guesses correctly. Use a while loop for this exercise.

#Generate a random number between 1 and 10
target <- sample(1:10,1)

#Initialize a variable to store the guess
guess <- 0
# while loop to play the game
while(guess != target){
  #Ask the user to guess a number
  guess <- as.integer(readline("Enter the number to guess (1-10): "))
  
  if (guess<target){
    print("Guess a higher number")
  }else if (guess>target){
    print("Guess a smaller number")
  }else{
    print("Correct Guess!")
  }
}

#Repeat loop

result <- c("Hello World")
i <- 1

# test expression 
repeat {
  
  print(result)
  
  # update expression 
  i <- i + 1
  
  # Breaking condition
  if(i >5) {
    break
  }
}

#Scenario 1: Password Verification

# In a facebook login system, you can use a repeat loop to 
# repeatedly prompt the user for a password until they enter the correct one.

## Define the correct password
correct_password <- "password123"

## Repeat loop for verification

repeat{
  entered_password <- readline("Type Password: ")
  if (entered_password == correct_password){
    print("Login successful!")
    break
  }else{
    print("Incorrect password. Try again")
  }
}

add_numbers <- function(x,y){
  result= x+y
  return(result)
}
add_numbers(4,5)
add_numbers(x=3,y=7)
add_numbers(y=7,x=3)



#Function to find the volume of a cuboid
#l*w*H

cuboid_volume <- function(l,w,h){
  volume= l*w*h
  surface_area <- (2*(l*w))+(2*(l*h))+(2*(w*h))
                             
  print(paste("Volume = ",volume))
  print(paste("Surface Area= ", surface_area))
  
}

cuboid_volume(5,7,9)


quadratic <- function(a, b,c){
  if(a==0){
    print("This is not a quadratic equation")
  }else{
    disc= b^2-(4*a*c)
    if(disc<0){
      print("There is no real solution")
    }else if(disc==0){
      print("There is one real solution: ")
      print(-b/(2*a))
    }else{
      print("There are 2 real solutions.")
      print((-b+sqrt(disc))/(2*a))
      print((-b-sqrt(disc))/(2*a))
    }
  }
}

quadratic(1,5,6)
quadratic(5,2,1)
quadratic(-1,10,-25)
