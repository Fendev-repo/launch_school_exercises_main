# Sum of Multiples

Write a program that, given a number, can find the sum of all
the multiples of particular numbers up to but not including 
that number.

If we list all the natural numbers up to but not including 20 
that are multiples of either 3 or 5, we get 3, 5, 6, 9, 10, 
12, 15, and 18. The sum of these multiples is 78.

Write a program that can find the sum of the multiples of a 
given set of numbers. If no set of numbers is given, default 
to 3 and 5.
  
  - Problem
    - How will I generate the list of natural numbers
      from 1 - to arg_num supplied?
      - I will use a range (1..(arg_num - 1))
    - How will I iterate over the multipliers_array?
      (Outer array)I will use the Array#each method
    - How will I calculate the multiples for each number
      in the mulitpliers array?
      - The expression will be current_muliplier * block_arg_natural_number
    - How will I ensure that only unique muliples in the final
      array?
      - I will use the Array#uniq method
    - Based on the test suite - how will I reduce duplication
      in the code - based on the fact that some tests
      use class methods for this behavior, and other
      tests use instance methods for this behavior.
      - I will simply wrap the instance method behavior in a 
        class method of the same name.
    - How will I implement the ability for the implementation
      to accept an array of multipliers or use a default
      array of multipliers?
      - I will use a ternary operator in the initialize method
        if multiplers arg passed then set multiplers instance
        variable to the arg
        else
        use the default [3, 5]
    - How will I return the sum total
      - I will use the Array#sum as the last line in the 
        method to return the desired value.    
  
  - Examples
  - Data-structures
  - Algorithm
    Set the multipliers instance var to either array of args or default [3, 5]
    Declare instance variable return_array = []

    OUTERLOOP - Iterate over each multiplier
      INNERLOOP - Iterate over each natural number in range
        calculate multiple 
        append multiple to return array

    WRAPPER
      Declare Class method of same name and 
      initialize class instance and pass arguments
      RETURN sum of unique mulitples  
  - Code






