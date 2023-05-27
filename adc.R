# for loop
for (i in 1:10) {
  print(i^2)
}

#nested for loop
for (i in 1:3) {
  for (j in 1:i) {
    print(i*j)
  }
}

# Break and next
for (i in c(3,6,23,19,0,21)) {
  if (i == 0) {
    break
  }
  print(i)
}
print("Loop is finished")

for (i in c(3,6,23,19,0,21)) {
  if (i == 0) {
    next
  }
  print(i)
}

#Quadratic equation solver

quadratic <- function(a, b, c) {
  if (a == 0) {
    print("This is not a quadratic equation")
  } else {
    delta <- b^2 - 4*a*c
    if (delta < 0) {
      print("There are no real solutions")
    } else if (delta == 0) {
      print("There is one real solution")
      print(-b/(2*a))
    } else {
      print("There are two real solutions")
      print((-b + sqrt(delta))/(2*a))
      print((-b - sqrt(delta))/(2*a))
    }
  }
}

quadratic(1,5,6)
quadratic(5,2,1)
quadratic(-1,10,-25)
