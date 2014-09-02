puts <<-PRESENTATION

  Select, Reject, Collect, Inject, and Detect

  Oh My!


  Does this look familiar:

  for(int i = 0; i < count; i++) {
  }

  As a c/c++ developer this was how I looped through things. I was looking for something similar when I switched to ruby

  a = [1,2,3,4]
  for n in a
    puts n
  end

  I was trying very hard to learn to do things the Ruby way.

  a.each do |n|
    puts n
  end
  1
  2
  3
  4
   => [1, 2, 3, 4]

  or

  a.each { |n| puts n }


  Enumerable

  http://ruby-doc.org/core-2.1.2/Enumerable.html
  You can include Enumerable if:

     * The object can use the .each method

     * The object can be compared and ordered using the <=> method.


  Combined Comparison Operator or spaceship method

  a <=> b
  if a < b then return -1
  if a = b then return  0
  if a > b then return  1
  if a and b are not comparable then return nil



  There are three things used for collections:
  1. Building a list of items from an array
  2. Total the items in an array
  3. Find an item in the array



  Building a list

     * select/find_all

     * reject

     * collect/map


  Building a list using select.
  Returns an new array including the items where the block is true. If the block is false for all the elements then an empty array is returned

  a = [1,2,3,4]
  a.select {|n| n > 2}
   => [3, 4]

  a.select {|n| n > 6}
  => []

  Building a list using reject.
  Returns an new array including the items where the block is false. If the block is true for all the elements then an empty array is returned

  a = [1,2,3,4]
  a.reject {|n| n > 2}
   => [1, 2]

  a.reject {|n| n > 0}
   => []

  Building a list using collect/map
  Returns an new array that is the result of the block.

  a = [1,2,3,4]
  a.collect {|n| n*n}
   => [1, 4, 9, 16]



  Adding up the items in a list


     * inject/reduce


  The biggest difference with inject is that there is another variable, an accumulator that is passed to each call. The accumulator is modified during each block and passed to the next block.

  a = [1,2,3,4]
  a.inject {|acc,n| acc + n}
   => 10

  You can also pass in a default value for the accumulator

  a = [1,2,3,4]
  a.inject(10) {|acc,n| acc + n}
   => 20

  If no value is passed in the default value for the accumulator is the first value in the array.

  You can also handle non-numbers

  a = [1,2,3,4]
  a.inject([]) {|acc,n| acc << n+n}
   => [2, 4, 6, 8]



  Find an item in a list

     * detect/find


  Returns the first element where the logic is true

  a = [1,2,3,4]
  a.detect {|n| n == 3}
   => 3

  a.detect {|n| n == 10 }
   => nil



  Conclusion

  select or reject for selecting or rejecting based on a condition
  collect for collecting based on the results of a condition
  inject for totaling a value or concatenating values together
  detect for finding an item



  Extra Credit

  any? - returns true/false
       a.any? {|num| num == 3}
  none? - returns true/false, opposite of any?
  all? - returns true/false
       a.all? {|num| num.class == Fixnum}
  max - returns one object
       a.max {|x, y| x.length <=> y.length}
  max_by - returns one object but uses a block
       a.max_by {|x| x.length}
  min - returns on object
  min_by - returns one object but uses a block



  Thanks

  http://matthewcarriere.com/2008/06/23/using-select-reject-collect-inject-and-detect/
  http://www.emilyplatzer.io/2014/06/02/enumerabletown.html

  Dustin McCraw

PRESENTATION