![General Assembly Logo](http://i.imgur.com/ke8USTq.png)

# Ruby Arrays

## Objectives

By the end of this, students should be able to:

- Create an Array.
- Add elements to an Array.
- Access elements from an Array.
- Use multiple Array methods

## Arrays

Ruby Arrays are collection of elements that are indexed by integers, *Fixnum objects*. 

### Creation and Accessing Elements  

> Create a file `demo/array_simple.rb` and run it.  

```ruby
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

```
### You Do

Create and array with 6 elements, all of different types. Access the first, last and third elements using the above operators and bracket syntax.

### Modifying Arrays

> Create a file `demo/array_modify.rb` and run it.

```ruby
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
```

### You Do

Create arrays and modify them using the above methods and operators.

### Find in Array

> Create a file `demo/array_find.rb` and run it.
> 
> 

```ruby
require 'date'

a6 = [33, "cat", Date.today.year, 'fish', 5.8, Date.today.day]

puts "a6 = #{a6}"
puts "a6.index('cat') = #{a6.index('cat')}"

puts "a6.include?('fish') = #{a6.include?('fish')}"

element = a6.find{|el| el == 'cat'}
puts "a6.find{|el| el == 'cat'} is #{element}"

elements = a6.find_all{|el| el.class == Fixnum }
puts "a6.find_all{|el| el.class == Fixnum } is #{elements}"

elements = a6.select{|el| el.class == Fixnum }
puts "a6.select{|el| el.class == Fixnum } is #{elements}"
```

## Resources

- [Ruby Arrays](http://docs.ruby-lang.org/en/2.0.0/Array.html)
