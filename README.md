![General Assembly Logo](http://i.imgur.com/ke8USTq.png)

# Ruby Arrays

## Instructions

Fork, clone, branch (training), `bundle install`

## Objectives

By the end of this, students should be able to:

-   Create a Ruby Array using both the literal (`[]`) and `new` constructors.
-   Assign an element at a specific index in a Ruby Array.
-   Access elements by index in a Ruby Array.
-   Add elements to and remove elements from the end of a Ruby Array.
-   Add elements to and remove elements from the beginning of a Ruby Array.

## Introduction

In Ruby, "Arrays are ordered, integer-indexed collections of any object." From
that, [Ruby Arrays](http://ruby-doc.org/core-2.3.1/Array.html) seem a lot like
JavaScript Arrays.

But there are some important differences.

## Creating a Ruby Array

As with JavaScript, Ruby Arrays can be created using literals (technically, a
constructor method on class Array) and with a constructor.

### Demo

```ruby
> developers = []
=> []
> developers = Array.new
=> []
```

With the literal syntax, we can create an array with initial values.

```ruby
> not_the_same_type = [[], 'one', 2.0, 3]
=> [[], "one", 2.0, 3]
> developers = ['Caleb', 'Joel', 'Julia', 'Adam']
=> ["Caleb", "Joel", "Julia", "Adam"]
```

If all of the entries are strings, Ruby provides a (Perl inspired) string
[quoting](https://en.wikibooks.org/wiki/Ruby_Programming/Syntax/Literals#The_.25_Notation)
mechanism to create an Array.

```ruby
> developers = %w{Caleb Joel Julia Adam}
=> ["Caleb", "Joel", "Julia", "Adam"]
```

### Code Along

Let's use [Array::new](http://ruby-doc.org/core-2.3.1/Array.html#method-c-new)
to create some initialized arrays in [bin/code_along.rb](bin/code_along.rb).  [Creating
Arrays](http://ruby-doc.org/core-2.3.1/Array.html#class-Array-label-Creating+Arrays)
has an important caveat when creating Ruby Arrays with default values.

-   Create an empty array, `lit_array`, using the literal syntax

-   Create an array, `constr_array`, using the constructor syntax, initialized
with 5 elements

-   Create an array, `ten_false_array`, initialized with 10 `false` elements

How does this compare with
[creating](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array)
JavaScript Arrays?

## Assigning and accessing elements in a Ruby Array

### Demo

Let's explore:

-   [`Array#[]`](http://ruby-doc.org/core-2.3.1/Array.html#method-i-5B-5D) (Element Reference)
-   [`Array#[]=`](http://ruby-doc.org/core-2.3.1/Array.html#method-i-5B-5D-3D) (Element Assignment)

```ruby
> developers[0]
=> "Caleb"
developers[-1]
=> "Adam"
> developers[-4] == developers[0]
=> true
> developers[developers.length]
=> nil
> developers[-5]
=> nil
> developers[-3, 2]
=> ["Joel", "Julia"]
> developers[-5] = 'Kira'
IndexError: index -5 too small for array; minimum: -4
from (pry):4:in ``__pry__''
> developers[developers.length] = 'Ying'
=> "Ying"
```

### Lab: Storing and Accessing Array Elements

Working in [bin/lab.rb](bin/lab.rb) (storing the results of any access in `tmp`
for display):

-   Assign `20` to the element at `length+1`.
-   Access the 3rd element from the end of an array length of 5.
-   Access element 9 for a length of 5 elements.
-   Assign `[-12, -49]` to the 5th element from the end.
-   Access all the elements starting at index 1.

In [bin/lab.js](bin/lab.js) do the same in JavaScript.

## Using a Ruby Array as a stack or queue

### Code Along: Let's Explore

-   [Array#push](http://ruby-doc.org/core-2.3.1/Array.html#method-i-push) (Append -
also [Array#<<](http://ruby-doc.org/core-2.3.1/Array.html#method-i-3C-3C))
-   [Array#pop](http://ruby-doc.org/core-2.3.1/Array.html#method-i-pop) (Remove from
end)
-   [Array#unshift](http://ruby-doc.org/core-2.3.1/Array.html#method-i-unshift)
(Prepend)
-   [Array#shift](http://ruby-doc.org/core-2.3.1/Array.html#method-i-shift) (Remove
from beginning)

```ruby
> developers << "Kosta"
=> ["Caleb", "Joel", "Julia", "Adam", "Kira", "Kosta"]
> developers.push "Rick"
=> ["Caleb", "Joel", "Julia", "Adam", "Kira", "Kosta", "Rick"]
> developers << "Johnathan" << "Peter"
=> ["Caleb",
  "Joel",
  "Julia",
  "Adam",
  "Kira",
  "Kosta",
  "Rick",
  "Johnathan",
  "Peter"]
> developers.shift 4
=> ["Caleb", "Joel", "Julia", "Adam"]
> developers
=> ["Kira", "Kosta", "Rick", "Johnathan", "Peter"]
```

### Lab: Push and Pop Story

Create [bin/story.rb](bin/story.rb). In this file, tell a story (of your choice) involving
multiple characters that enter and leave the story. These characters should be
held in an array and should be added to and taken out of the story using the
`push`, `pop`, `shift` and `unshift` methods. Practice using string
concatenation while printing your story by only referring to your characters
from their held array (i.e., no hardcoding of names that exist in the array).
One these requirements are met, feel free to implement more creative string and
array methods into your story.

For example:

```ruby
characters = ["Lee", "Adrian", "Bo"]

puts "There once were three friends, #{characters[0]}, #{characters[1]}, and #{characters[2]}."

characters << "Taylor"

puts "#{characters[-2]} befriended #{characters[-1]}, #{characters[0]}\'s known enemy.
      #{characters[0]} could no longer be their friend."

characters.shift

puts "#{characters[0]}, #{characters[1]}, and #{characters[2]} needed to think of lunch plans."
```

Running `ruby bin/story.rb` should print your story for you in the terminal.

### Lab: Compare and Contrast

In `lab.md` describe the differences between the Array methods `push`, `pop`,
`unshift`, and `shift` in Ruby and JavaScript.

### Bonus: Create Ruby Array Using a Block Initializer

In [bin/lab.rb](bin/lab.rb) use a block initializer with `Array.new` to create a
 Ruby Array with ten elements where elements are equal to their index multiplied
by 2. Store the result and display it on the console with `p <array name>`.

In [bin/lab.js](bin/lab.js) do the same in JavaScript with `new Array` and a
method chain.

## [License](LICENSE)

1.  All content is licensed under a CC­BY­NC­SA 4.0 license.
1.  All software code is licensed under GNU GPLv3. For commercial use or alternative
licensing, please contact legal@ga.co.
