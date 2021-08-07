# Practice iterating over an array using the .each method
# square_array
#  does not call on collect/map or inject
#  calls on each 
#  should square the elements in an array 

array = [1, 2, 3]

def square_array(array)
  squared = [ ]
  array.each {|element| squared << element ** 2}
  squared
end

# returns a new array called squared
puts square_array(array)
# => 1 
# => 4 
# => 9

# Orginal array is unaltered
puts array
# => 1, 2, 3