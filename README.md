![General Assembly Logo](http://i.imgur.com/ke8USTq.png)

# Ruby Arrays (versus JavaScript Arrays)

## Instructions

Fork, clone, branch (training), `bundle install`

## Objectives

By the end of this, students should be able to:

- Contrast Ruby Arrays with JavaScript Arrays.
- Create a Ruby Array using both the literal (`[]`) and `new` constructors.
- Assign an element at a specific index in a Ruby Array.
- Access elements by index in a Ruby Array.
- Add elements to and remove elements from the end of a Ruby Array.
- Add elements to and remove elements from the beginning of a Ruby Array.

## Introduction

In Ruby, "Arrays are ordered, integer-indexed collections of any object."  From that, [Ruby Arrays](http://ruby-doc.org/core-2.2.4/Array.html) seem a lot like JavaScript Arrays.  But there are some important differences.

## Creating a Ruby Array

As with JavaScript, Ruby Arrays can be created using literals (technically, a constructor method on class Array) and with a constructor.

### Demonstrationaini

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
> developers = ['Ken', 'Kevin', 'Khanhnhat', 'Kyle']
=> ["Ken", "Kevin", "Khanhnhat", "Kyle"]
```

If all of the entries are strings, Ruby provides a (Perl inspired) string [quoting](https://en.wikibooks.org/wiki/Ruby_Programming/Syntax/Literals#The_.25_Notation) mechanism to create an Array.

```ruby
> developers = %w{Ken Kevin Khanhnhat Kyle}
=> ["Ken", "Kevin", "Khanhnhat", "Kyle"]
```

### Code along

Let's use [Array::new](http://ruby-doc.org/core-2.2.4/Array.html#method-c-new) to create some initialized arrays in `bin/code_along.rb`.  [Creating Arrays](http://ruby-doc.org/core-2.2.4/Array.html#class-Array-label-Creating+Arrays) has an important caveat when creating Ruby Arrays with default values.

How does this compare with [creating](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array) JavaScript Arrays?  How could we accomplish the same things with JavaScript Arrays?

### Lab

In `bin/lab.rb` use `Array.new` to create a Ruby Array with ten elements where elements with an even index are equal to the index multiplied by 2 and elements with and odd index are equal to the square of the index.  Store the result and display it on the console with `p <array name>`.

In `bin/lab.js` do the same in JavaScript with `new Array` and a method chain.

## Assigning and accessing elements in a Ruby Array

### Demonstration

Let's explore [`Array#[]`](http://ruby-doc.org/core-2.2.4/Array.html#method-i-5B-5D) (Element Reference) and [`Array#[]=`](http://ruby-doc.org/core-2.2.4/Array.html#method-i-5B-5D-3D) (Element Assignment) methods.

```ruby
> developers[0]
=> "Ken"
developers[-1]
=> "Kyle"
> developers[-4] == developers[0]
=> true
> developers[developers.length]
=> nil
> developers[-5]
=> nil
> developers[-3, 2]
=> ["Kevin", "Khanhnhat"]
> developers[-5] = 'Aaron'
IndexError: index -5 too small for array; minimum: -4
from (pry):4:in ``__pry__''
> developers[developers.length] = 'Aaron'
=> "Aaron"
```

### Code along

We'll work in `bin/code_along.rb` again, modifying and retrieving values from the Arrays we created previously.

### Lab

Working in `bin/lab.rb` (storing the results of any access in `tmp` for display):

- Assign `20` to the element at `length+1`.
- Access the 3rd element from the end for a length of 5.
- Access element 19 for a length of 5 elements.
- Assign `[-12, -49]` to the 5th element from the end for a length of 3.
- Access all the elements starting at index 1.

In `bin/lab.js` do the same in JavaScript.

## Using a Ruby Array as a stack or queue

### Demonstration

Let's explore [Array#push](http://ruby-doc.org/core-2.2.4/Array.html#method-i-3C-3C) (Append - also [Array#<<](http://ruby-doc.org/core-2.2.4/Array.html#method-i-3C-3C)), [Array#pop](http://ruby-doc.org/core-2.2.4/Array.html#method-i-pop), [Array#unshift](http://ruby-doc.org/core-2.2.4/Array.html#method-i-unshift), [Array#shift](http://ruby-doc.org/core-2.2.4/Array.html#method-i-shift).

```ruby
> developers << "Andrew"
=> ["Ken", "Kevin", "Khanhnhat", "Kyle", "Aaron", "Andrew"]
> developers.push "Billy"
=> ["Ken", "Kevin", "Khanhnhat", "Kyle", "Aaron", "Andrew", "Billy"]
> developers << "Celena" << "Ethan"
=> ["Ken",
 "Kevin",
 "Khanhnhat",
 "Kyle",
 "Aaron",
 "Andrew",
 "Billy",
 "Celena",
 "Ethan"]
> developers.shift 4
=> ["Ken", "Kevin", "Khanhnhat", "Kyle"]
> developers
=> ["Aaron", "Andrew", "Billy", "Celena", "Ethan"]
```

### Code along

We'll work in `bin/code_along.rb` again, adding values to, removing values from, and moving values in the Arrays we created previously.

### Lab

In `lab.md` describe the differences between the Array methods `push`, `pop`, `unshift`, and `shift` in Ruby and JavaScript.

## [License](LICENSE)

Source code distributed under the MIT license. Text and other assets copyright
General Assembly, Inc., all rights reserved.
