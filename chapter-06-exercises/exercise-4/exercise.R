# Exercise 4: functions and conditionals

# Define a function `is_twice_as_long` that takes in two character strings, and 
# returns whether or not (e.g., a boolean) the length of one argument is greater
# than or equal to twice the length of the other.
# Hint: compare the length difference to the length of the smaller string
is_twice_as_long <- function(first_phrase, second_phrase) {
  difference <- abs(nchar(first_phrase) - nchar(second_phrase))
  smaller <- min(nchar(first_phrase), nchar(second_phrase))
  if (difference >= smaller) {
    print("one argument is greater or equal to twice the other")
    }
  else {
      print("no argument is greater or equal to twice the other")
  }
}

# Call your `is_twice_as_long` function by passing it different length strings
# to confirm that it works. Make sure to check when _either_ argument is twice
# as long, as well as when neither are!

# Test when first argument is  >= x2 the second
is_twice_as_long("hi there", "hi") 

# Test when second argument is >= x2 the second
is_twice_as_long("hi", "hi there")

# Test when neither argument is >= x2 the other
is_twice_as_long("hit", "hit")


# Define a function `describe_difference` that takes in two strings. The
# function should return one of the following sentences as appropriate
#   "Your first string is longer by N characters"
#   "Your second string is longer by N characters"
#   "Your strings are the same length!"
describe_difference <- function(first_string, second_string) {
  len_first <- nchar(first_string)
  len_second <- nchar(second_string)
  diff <- abs(len_second - len_first)
  if (len_first > len_second) {
    print(paste("Your first string is longer by ", diff, "characters"))
  }
  else if (len_first < len_second) {
    print(paste("Your second string is longer by ", diff, "characters"))
  }
  else {
    print("Your strings are the same length!")
  }
}

# Call your `describe_difference` function by passing it different length strings
# to confirm that it works. Make sure to check all 3 conditions1

# 1st
describe_difference("hello there", "hello")

#2nd
describe_difference("bye", "bye-bye")

#3rd
describe_difference("hi!", "bye")
