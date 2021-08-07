# Intro to Ruby Iterators 
# Link: https://learning.flatironschool.com/courses/2661/pages/introduction-to-ruby-iterators?module_item_id=202319

# Understand the difference between looping and iterating.
# Learn how to pass a block to an iterator.
# do/end block syntax.
# { } block syntax.
# Capture a value yielded to the block by the iterator in | | (pipes).
# Use a captured yield value within the iterator's block.

# Looping is a programming construct that allows you to tell your program to do something 
# a certain number of times or until a certain condition is met 
# It is a mechanism to repeat a selection of code 

# Iteration, is a way to operate on a collection object (like an array) and do something with 
# each element in that collection 

# Say you're writing a program to annoy someone. 
# We don't want to anny him too much, or else we might get grounded 
# Our program when it runs, will #puts "Stop hitting yourself!" seven taimes, then stop 
# For a task like this, we need to perform a task a certain discrete number of times, we 
# would use a loop 
7.times do 
    puts "Stop hitting yourself"
end 
# => Stop hitting yourself, Stop hitting yourself, Stop hitting yourself, Stop hitting yourself, Stop hitting yourself, Stop hitting yourself, Stop hitting yourself
puts ""

# What if we want to output the phrase only UNTIL our little brother calls out "Moooommmm!!!"
# We can stick with a loop construct like while 
# input = ""
# while input != "Mom!"
#     puts "Stop hitting yourself"
#     input = gets.chomp
# end
# puts ""

# However, what if we have 3 brothers, and we want to output 
# "Stop hitting yourself, #{little brother's name}!" once for each bother 
# With a while loop, that requires a lot of explicit coding. 

brothers = ["Tom", "Tim", "Jim"]

count = 0
while count <= brothers.length-1
  puts "Stop hitting yourself #{brothers[count]}!"
  count += 1
end 

# In order to output a simple phrase using each brothers name with a while loop 
# we need to 
# 1. Establish a counter 
# 2. Set the condition of the while loop 
# 3. Read data out of the array by index using the counter 
# 4. increment the counter at the bottom of the loop

# Since we are operating on a collection of data and seeking out to do something 
# with each element in that collection, we want to use an iterator 

# Iterators are methods that you can call on a collection, like an array, to loop 
# over each member of that collection and do something to or with that memeber of the colleciton 
puts ""
#-----------------------------------------------------------------------------------------

# Using #each 
primary_colors = ["Red", "Yellow", "Blue"]

primary_colors.each do |color| #do begins a block
     puts "Primary Color #{color} is #{color.length} letters long." # Block's body
end # terminates the block 

# Primary Color Red is 3 letters long.
# Primary Color Yellow is 6 letters long.
# Primary Color Blue is 4 letters long. 

# The block passed to each is executed once for each element
# We call each run, each execution, of the block passed to the iterator and iteration
# Its a word used to refer to each 'step' or each "execution" of a block
# An iteration is the singular execution of a sequence of code (that we call a block) within a loop 

# The iterator #each yields each element one at a time to every iteration via a variable declared 
# with the opening of the block 

# After the opening do of our code, we see |color|. | is called a pipe 
# After do, we declare a local variable color by enclosing it in | | pipes 
# This variables value is automatically assigned the element from the array for the current iteration
# first iteration it's assigned "Red", next iterations is assigned "Blue" and so on 
#--------------------------------------------------------------------------------------------------------------------

# What is a block?
# A block is a chuck of code b/n braces { } or b/n do/end keywords 
# that you can pass to a method almost exactly like you can pass an argument to a method 
# There are some methods, like iterator methods, that can be called WITH A BLOCK 
# i.e accompanied by a block denoted with { } or do/end
# Such methods wholel run and pass, or yeild, data to the code in the block for that code to operate on or do something with 

# What are the | | ?
# "Pipes", When invoking an iterator like #each, 
# The variable name inside the pipes acts as an argument that is being passed into the block 
# The iterator will pass, or yeild, each element of the collection on which it is called to the block 
# Each element, as it gets passed into the block, will be equal to the variable named inside the pipe. 
# > Call, or run, the code in the block once for each element of the collection.
# > Pass a single element of the collection into the block every time the code in the block is called, or run. 
#   Start with the first element in the collection, and then move on to the second element, then the third, etc.
# > Every time you call the code in the block and pass in an element from the collection, set the variable name from between the pipes equal to that element.

# This is exactly what happens when you define a method to accept an argument and then call the method with 
# a real argument 
def hi_there(name)
  puts "Hi, #{name}"
end

hi_there("Sophie") # > "Hi, Sophie"
# => nil  
puts ""

# Think of the variable between the pipes like the name variable we are using to define our argument 

# A Closer Look 
# Revisit our example from above 
brothers = ["Tim", "Tom", "Jim"]
brothers.each do |brother|
  puts "Stop hitting yourself #{brother}!"
end 

# Here #each method takes each element of brothers array, one at a time, and passes, or yields, it into the block 
# of code between do/end
# In summary, #each yeilds each item of the collection on  which it is called to the block with which it is called 
# It keeps track of which element of the collection it is manipulating as it moves through the colleciton
puts ""

# Lets set a counter variable and manually increment it in order to see the #each  method in action 
brothers = ["Tim", "Tom", "Jim"]
counter = 1
brothers.each do |brother|
  puts "This is loop number #{counter}"
  puts "Stop hitting yourself #{brother}!"
  counter += 1
end 
# => This is loop number 1
# => Stop hitting yourself Tim!
# => This is loop number 2
# => Stop hitting yourself Tom!
# => This is loop number 3
# => Stop hitting yourself Jim!
#=> ["Tim", "Tom", "Jim"] is the return value (not printed out)
puts ""
#--------------------------------------------------------------------------------------------------------

# A Note on Return Values 
# Different iterators have different return values. 
# Notice that the return value of the call to #each above returned ["Tim", "Tom", "Jim"]
#– the original array. The #each method will always return the original collection on which it was called.
#-----------------------------------------------------------------------------------------------------------

#The { } Syntax 
# Another way of establishing a code block is to use curly brackets { }, instead of do/end 
brothers = ["Tim", "Tom", "Jim"]
brothers.each{|brother| puts "Stop hitting yourself #{brother}!"}