library(tidyverse)

# I want to write a program that prints the result of dealing with a given box by inputting a sequence of
# extractions (selected by me) in the form of a vector:
# (for example: c(1,0,0,1,0,0,0,0)) where 1 is the event of a black ball extracted, 0 is for the white

toymodelstart <- function()
    {
    	# We initialize the first row as the row before any extraction, we have no information on the content
        # of the box beside the fact that the sum of the total white balls in all boxes is equal the sum of the
        # total black balls in all boxes -> f(Ew) = 0.5
        scorew <- 0
        scoreb <- 0
        
        # Since we received no information the box can be either of the 6 with the same probability
        prob0 <- 1/6
        prob1 <- 1/6
        prob2 <- 1/6
        prob3 <- 1/6
        prob4 <- 1/6
        prob5 <- 1/6
        
        # trial  = # extraction
        # whites = # of white balls drawn
        # blacks = # of black balls drawn
        # Hj     = probability of dealing with box j
        # ptot   = sum of the probabilities (just to check if the sum remains 1 as it should be)
        outp <- tibble(trial=0,whites=scorew,blacks=scoreb,
                       H0=prob0, H1=prob1, H2=prob2, H3=prob3, H4=prob4, H5=prob5, ptot=1)
    }


toymodelnext <- function(previous)
    {
    	numextraction <- nrow(previous) + 1
    	
    	extraction <- readline(prompt="Input '1' (Black) or '0' (White):")
    	print(extraction)
    }
    
extr <- c(0,1,1,1,0) # I used the same extraction sequence as the one shown in 'Teaching statistics in the physics 
                     # curriculum: Unifying and clarifying role of subjective probability'
                     # just for checking if the code is correct
mymodel <- toymodelstart()
toymodelnext(mymodel)
