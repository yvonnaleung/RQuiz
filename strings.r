capitalize.words <- function (s) {
  ## TODO: Capitalize the first letter of every word in 's'.
  ## For example, "hello, everyone in the world!" becomes
  ## "Hello, Everyone In The World!"
        
        #split the characters
        splitWord <- strsplit(s, " ")[[1]]
        #capitalize the first letter, then paste together
        paste(toupper(substring(splitWord, 1,1)), substring(splitWord, 2),
              sep="", collapse=" ")
            
}

reverse.words <- function(s) {
  ## TODO: reverse the order of the words in 's'
  ## For example, "hello, world!" becomaes "world! hello,"
        
        #split the string, reverse, then paste together
        paste(rev(strsplit(s, "\\s+")[[1]]), collapse= " ")
}

digit.sum <- function(n) {
  # TODO: return the sum of the digits of n
        
        x <- as.character(n) #convert to a character
        sum(as.numeric(unlist(strsplit(x, "")))) #convert it back to numeric and sum it
}