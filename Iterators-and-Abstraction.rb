# Iterators and Abstractions 
# Link: https://learning.flatironschool.com/courses/2661/pages/iterators-and-abstraction?module_item_id=202318

# Understand the concept of iterations 
# Understand simple iterations or looping 
# Intro to complex interation 

# Iteration vs Looping 
# previously discussed four loop types, loop, times, while, until 
# Difference between looping and iterations 
# Looping occurs when you tell your program to do something a certain number of times 
# Iteration occurs when you have a collection of data (like arrays) and you operate 
# on each member of that collection 

# Example: 
# tell my program to print out a phrase five times is looping 
# tell my program to enumberate over an array and add 10 is an iteration 

# Loop - Least Abstract 

# Imaging having a basket of 10 apples 
# How do you make sure that you took out all of the apples 
# at some point there will be no more apples in the basket, you will need to keep 
# track of that or else you might never stop reaching in for more apples 
# 1. Keep track of how many there are in the basket 
# 2. Keep track of how many apples that are then out 
# 3. Start loop 
# 4. If the count of apples you've taken out is less than the count of apples originally 
#    in the basket, take one out and increment the count of apples take out by one
# 5. If the count of applies take out is NOT less than the count of apples originally in the 
#    basket, then break out of the loop 

basket = ["apple 1","apple 2","apple 3","apple 4","apple 5","apple 6","apple 7","apple 8","apple 9","apple 10"]

apples_in_basket = basket.size # Step 1
apples_taken_out = 0 # Step 2 

loop do # Step 3 
    if apples_taken_out < apples_in_basket
        # Step 4 
        puts "Taking out #{basket[apples_taken_out]}"
        apples_taken_out += 1
    else 
        # Step 5 
        break 
    end 
end

# => Taking out apple 1, Taking out apple 2, Taking out apple 3 ...Taking out apple 10

# This is the least abstract implementation of the algorithm. All the details are there, 
# Every step is accounted for explicitly in the code 
puts ""
#-------------------------------------------------------------------------------------

# while - A Little More Abstract 
# The goal of abstraction is to remove the details 

basket = ["apple 1","apple 2","apple 3","apple 4","apple 5","apple 6","apple 7","apple 8","apple 9","apple 10"]

apples_in_basket = basket.size # Step 1
apples_taken_out = 0 # Step 2 

# Step 3 + 4 
while apples_taken_out < apples_in_basket
    puts "Taking out #{basket[apples_taken_out]}"
    apples_taken_out += 1
end
#=> => Taking out apple 1, Taking out apple 2, Taking out apple 3 ...Taking out apple 10

# We combines Steps 3 and 4 into a while loop 
# initializing a cycle of behavior based upon a condition, 
# which is what the word while means in both Ruby and in English 
# Abstraction didn't make our code less clear, it made it "absolutely precise"
# Since our loop is conditional from the start by using the while loop construct, 
# we don't need to explicitly break out of it. 
# This makes step 5 implicit 
puts ""
#------------------------------------------------------------------------------

# each - The MOST Abstract 
# The purpose of abstraction is to not be vague, but to create a new semantic level in 
# whick one can be absolutely precise 

basket = ["apple 1","apple 2","apple 3","apple 4","apple 5","apple 6","apple 7","apple 8","apple 9","apple 10"]

# Step 1, 2, 3, 4, 5 as one, abstractly 
basket.each do |apple|
    puts "Taking out #{apple}"
end
# => Taking out apple 1, Taking out apple 2, Taking out apple 3 ...Taking out apple 10

# All the details of the algorithm are removed and replaced with the intention of out code, 
# not the implementation of the algorithm 