# Math 343
# Programmer: Scott Schoeller
# Project: Stochastic Simulation - Chemical Kinetics 

# Below code derived from Flipping Coin Example

n <-1000000
conc <- 1
probConc <- 1


for (i in 1:n) {
  y <-runif(1,0,1) # Uniform random var (# var, lower, upper)
  # Reaction is never 100% efficient and reaction runs forward
  if(probConc > 0 && y > 0 && y < probConc) probConc <- y
}

conc <- probConc*conc
print(conc)

