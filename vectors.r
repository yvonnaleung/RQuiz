middle.element <- function(v) {
  ## TODO: return the moddle element of v.
  ## If v has length n, then return the element at index n/2
  ##   (rounding up to the nearest whole number)
  
        n <- length(v) #assign length n
        x <- floor(v[n/2]) #return middle element of an even length
        y <- floor(v[n/2] + 1) #return middle element of an odd length
        if(n %% 2 == 0) { #if/else statement to return middle element of an odd length or even length
                return(x)
        } else {
                return(y)
        }
}

evens <- function(v) {
  ## TODO: return the even elements of v
        y <- v[which(v %% 2 == 0)] #extract even elements from v
        return(y)
}

hypotenuse <- function(a, b) {
  ## TODO: If a and b are the legs of a right triangle, apply the pythagorean
  ## formula to return the length of the hypotenuse.
  
  ## This should work even if a and b are vectors, and should be applied element-wise.
  ## Raise an error if a and b are not the same length.
        pythagorean <- sqrt(a^2 + b^2) #formula of pythagorean theorem
        return(pythagorean)
}

reverse.evens <- function(v) {
  ## TODO: reverse the order of the even elements of v.
  ## Leave the odd elements in their place.
  ## For example, reverse.evens(c(1,2,3,4,5)) == c(1,4,3,2,5)
       
        v[v %% 2 == 0] <- rev(v[v %% 2 == 0]) #extract even numbers and reverse only evens
        v
}