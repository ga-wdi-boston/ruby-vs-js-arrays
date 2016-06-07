'use strict';

// Lab 1

// Use `new Array` and method chaining to create a JavaScript Array
// with ten elements where elements are equal to their index multiplied by 2.
// Store the result and display it on the console with `console.log(<array name>)`

let array_times_2 = new Array(10);

for ( let i = 0; i < array_times_2.length; i++ ) {
  let value = i * 2;
  array_times_2[i] = value;
}

console.log(array_times_2);

// Lab 2

// Assign `20` to the element at `length+1`.

// Access the 3rd element from the end of an array length of 5.

// Access element 9 for a length of 5 elements.

// Assign `[-12, -49]` to the 5th element from the end for a length of 3.

// Access all the elements starting at index 1.
