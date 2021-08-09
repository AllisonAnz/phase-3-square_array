require "pry"
#Each vs Collect 
# Link: https://learning.flatironschool.com/courses/2661/pages/each-vs-collect?module_item_id=202324

# dentify the return values of the each and collect methods.
# Implement the each and collect methods.

# Our Example 
# Building a hamburger method that takes an array of toppings as an argument 
# We want our method to..
# 1. Take in an array of toppings 
# 2. Iterate through each topping, on at a time 
# 3. Manipulate the data 
#4. Return the manipulated data 

# Each 
# each does not change the return value 
# It implicitly returns the orgininal array 

toppings = ["pickles", "mushrooms", "bacon"]

def hamburger(toppings)
    toppings.each do |topping|
        puts "I love #{topping} on my burgers!"
    end 
end
hamburger(toppings)
#=> I love pickles on my burgers! #=> I love mushrooms on my burgers! #=> I love bacon on my burgers!
puts ""

# If we want a different return value, we have to explicitly tell it to do so 
# In this version of our method, we set an empty array called my_statement 
# We then explicitly return after we finish our loop 
# Inside our each statement loop, we manipulate each topping by interpolating it inside a string 
# We then push that string into our my_statement array 
# After we iterate over the array, we return the new my_statement array 
# Notice that since the each doesn't return the thing we want, 
# We have to add an extra line at the end that returns the my_statments
def hamburger(toppings)
    my_statements = []
    toppings.each do |topping|
        my_statements << "I love #{topping} on my burgers!"
    end
    my_statements
end
puts hamburger(toppings)
# Our new return value:
#=> ["I love pickles on my burgers!", "I love mushrooms on my burgers!", "I love bacon on my burgers!"] 
puts ""

# However if we do not a different return value, we use map, also known as collect 

# These methods are abstractions of our each method 
# An abstraction is the process of taking away or removing characteristics from somehting 
# in order to reduce it to set a essential characteristic. 

# Map vs Collect
toppings = ["pickles", "mushrooms", "bacon"]

def hamburger(toppings)
  toppings.map do |topping|
    puts "I love #{topping} on my burgers!"
  end
end 

hamburger(toppings)
#binding.pry
#=> I love pickles on my burgers! #=> I love mushrooms on my burgers! #=> I love bacon on my burgers!

# Since map and collect are the same thing this can be expressed exactly the same way with collect 
toppings = ["pickles", "mushrooms", "bacon"]

def hamburger(toppings)
  toppings.collect do |topping|
    puts "I love #{topping} on my burgers!"
  end
end 
# This method will print 
#=> I love pickles on my burgers! #=> I love mushrooms on my burgers! #=> I love bacon on my burgers!

# The Map and Collect method will return 
# => [nil, nil, nil]

# Why does it return nil?
# If you look inside our map loop, you'll see that we are using puts 
# Which always has a nil return value 
# What this is telling us is that our return value is indeed being changed by map 

# Another Example 
# Here we are not longer using puts 
# Instead implicitly returning what is inside our block 
# Again showing that map will give us a new return value based on the logic inside our block 
def hamburger(toppings)
  toppings.collect do |topping|
    "I love #{topping} on my burgers"
  end
end 
# binding.pry
# Our new return value 
#=> ["I love pickles on my burgers", "I love mushrooms on my burgers", "I love bacon on my burgers"] 

#Takeaway 
# If you want the transformations to be reflected in the return value use map or collect.
# If you want to return the original return value use each
