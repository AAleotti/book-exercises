# Exercise 1: creating and accessing lists

# Create a vector `my_breakfast` of everything you ate for breakfast

my_breakfast <- c("milk", "cornflakes", "juice", "tea", "biscuits")

# Create a vector `my_lunch` of everything you ate (or will eat) for lunch

my_lunch <- c("tomatoes", "salad", "cucumber", "tuna", "bread", "fig", "cioccolate")

# Create a list `meals` that has contains your breakfast and lunch

meals <- list(breakfast = my_breakfast, lunch = my_lunch)

# Add a "dinner" element to your `meals` list that has what you plan to eat 
# for dinner

meals$dinner <- c("lamb", "guacamole", "tortilla", "mandarin", "yogurt")

# Use dollar notation to extract your `dinner` element from your list
# and save it in a vector called 'dinner'

dinner <- c(meals$dinner)

#Solution:
dinner <- meals$dinner

# Use double-bracket notation to extract your `lunch` element from your list
# and save it in your list as the element at index 5 (no reason beyond practice)

meals[[5]] <- meals[["lunch"]]

# Use single-bracket notation to extract your breakfast and lunch from your list
# and save them to a list called `early_meals`

early_meals <- list(meals[["breakfast"]], meals[["lunch"]])

#Solution:
early_meals <- meals[1:2]

### Challenge ###

# Create a list that has the number of items you ate for each meal
# Hint: use the `lappy()` function to apply the `length()` function to each item

num_items_per_meal <- lapply(meals, length)

# Write a function `add_pizza` that adds pizza to a given meal vector, and
# returns the pizza-fied vector

add_pizza <- function(meal_vector) {
  length_meal_vector <- length(meal_vector)
  last_index <- length_meal_vector + 1
  meal_vector[last_index] <- "pizza"
  meal_vector
}

#quicktest:
add_pizza(my_lunch)

#Solution:
add_pizza <- function(meal) {
  meal <- c(meal, "pizza")
  meal # return the new vector
}

# Create a vector `better_meals` that is all your meals, but with pizza!
all_meals <- c(my_breakfast, my_lunch, dinner)
better_meals <- add_pizza(all_meals)

#Solution:
better_meals <- lapply(meals, add_pizza)
