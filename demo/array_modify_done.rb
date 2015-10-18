# Arrays can have elements of different types
a4 = [ "the", "bird", 42, [], 77.78 ]
puts "a4 is #{a4}"

# Shovel operator, <<, concatenates to array
puts "a4 << 'jack' = #{a4 << 'jack'}"
puts "a4 is now = #{a4}"

# Pop last element off the array
puts "a4.pop = #{a4.pop}"
# last element goneso"
puts "a4 is now = #{a4}"

# Push element onto an array
puts "a4.push('mark') = #{a4.push('mark')}"
puts "a4 is now = #{a4}"

# Shift first element out of the array
puts "a4.shift = #{a4.shift}"
puts "a4 is now = #{a4}"

# Unshift into the first element of the array
puts "a4.unshift = #{a4.unshift(357)}"
puts "a4 is now = #{a4}"

# Quick way to create a array of strings
# See no quotes or commas needed!
str_array = %w{ this is an array of strings }
puts "str_array is #{str_array}"

# intersection of two arrays, AND operator
inter_array = %w{ foo bar tom} & %w{ tom joe}
puts "inter_array = #{inter_array}"

# union of two arrays
union_array = %w{ foo bar tom} | %w{ tom joe}
puts "union_array = #{union_array}"

# difference btw two arrays
diff_array = %w{ foo bar tom} - %w{ tom joe} # => ["foo", "bar"]
puts "diff_array = #{diff_array}"

# flatten an array of arrays
array_array = [[1, 3, 8], ['joe', 'terri', 'marianne']]
puts "array_array.flatten = #{array_array.flatten}"

# didn't change the array
puts "array_array = #{array_array}"

# flatten and replace, (bang, bang)
puts "array_array.flatten = #{array_array.flatten!}"

# DID change the array
puts "array_array = #{array_array}"

array_races = ['one', 'day', 'at', 'the', 'races']
puts "array_races = #{array_races}"

puts "array_races.join(' ') = #{array_races.join(' ')}"
puts "array_races.join(', ') = #{array_races.join(', ')}"
