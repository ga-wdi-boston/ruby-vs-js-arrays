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
