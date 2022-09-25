# Exercise 2: using `*apply()` functions

# Create a *list* of 10 random numbers. Use the `runif()` function to make a 
# vector of random numbers, then use `as.list()` to convert that to a list

rand_nums <- runif(10)
rand_nums <- as.list(rand_nums)

#Solution:
nums <- as.list(runif(10, 1, 100))

# Use `lapply()` to apply the `round()` function to each number, rounding it to 
# the nearest 0.1 (one decimal place)

rand_nums <- lapply(rand_nums, round, 1)

# Create a variable 'sentence' that contains a sentence of text (something 
# longish). Make the sentence lowercase; you can use a function to help.

sentence <- "Nothing makes sense in Biology except in light of Evolution"
sentence <- tolower(sentence)

# Use the `strsplit()` function to split the sentence into a vector of letters.
# Hint: split on `""` to split every character
# Note: this will return a _list_ with 1 element (which is the vector of letters)

list_vector_letters <- strsplit(sentence, "")
typeof(list_vector_letters) # list
typeof(list_vector_letters[1]) #list
typeof(list_vector_letters[[1]]) #character

# Extract the vector of letters from the resulting list

list_vector_letters[1]

#Solution:
letters <- list_vector_letters[[1]]
letters

# Use the `unique()` function to get a vector of unique letters

uniq_letters <- unique(list_vector_letters)
typeof(uniq_letters) #list

original_vector <- c("a", "b", "b", "c", "c", "c")
uniq_letters2 <- unique(original_vector)
typeof(uniq_letters2) #character
typeof(original_vector) #character

# Define a function `count_occurrences` that takes in two parameters: a letter 
# and a vector of letters. The function should return how many times that letter
# occurs in the provided vector.
# Hint: use a filter operation!

count_occurrences <- function(letter, vector) {
  new_vector <- vector == letter
  occurences <- vector[new_vector]
  num_occurences <-length(occurences)
  num_occurences
}

#Solution:
count_occurrences <- function(letter, all_letters) {
  length(all_letters[all_letters == letter])
}


# Call your `count_occurrences()` function to see how many times the letter 'e'
# is in your sentence.
test <- c("a", "b", "e", "e")
test2 <- test == "e"
count_occurrences("e", test) #2

count_occurrences("e", original_vector) #0
count_occurrences("e", uniq_letters) #0
count_occurrences("e", list_vector_letters) #0 .... so here it doesn't work, in fact I put as input list instead of a vector.


# Use `sapply()` to apply your `count_occurrences()` function to each unique 
# letter in the vector to determine their frequencies.
# Convert the result into a list (using `as.list()`).

test_vector <- list_vector_letters[1]
test_vector2 <- as.vector(test_vector)
typeof(test_vector2) # list. Don't know why.

fresh_vector <- c("h", "i", "h", "o", "w", "a", "r", "e", "y", "o", "u")
count_occurrences("e", fresh_vector) #1. So works already.

vector_words <- c("hi", "how", "are", "you")
count_occurrences("e", vector_words) #0. Because no element is just "e".
sapply(vector_words, count_occurrences, "e") # hi how are you 
                                             # 0   0   0   0 


# Print the resulting list of frequencies
result <- sapply(vector_words, count_occurrences, "e")
print(result)


#The idea of the exercise was to check letters from another vector:
#e.g.
vec1 <- c("hello", "again", "there")
vec2 <- c("good", "day", "to", "you", "too", "there")

#Applying solution method:
frequencies <- as.list(sapply(vec1, count_occurrences, vec2))
print(frequencies)
