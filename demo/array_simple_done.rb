# Create an empty array
a1 = Array.new
puts "a1 is #{a1}"

# Create an empty array using literal syntax
a2 = []
puts "a2 is #{a2}"

brothers = ['Joe', 'Mike', 'Tom', 'Ed']
puts "brothers are #{brothers}"

# Array elements can be accessed by index
puts "The third element is #{brothers[2]}"

# Notice index starts at zero!

# Arrays can have elements of different types
a4 = [ "the", "bird", 42, [], 77.78 ]
puts "a4 is #{a4}"

# More ways to access elements

# Access three elements starting at index 2
puts "a4[2,3] = #{a4[2,3]}"

# Access last element, yep negative indexes from end
puts "a4[-1] = #{a4[-1]}"

# Length of array
puts "a4.size is = #{a4.size}"
puts "a4.length is = #{a4.length}"
