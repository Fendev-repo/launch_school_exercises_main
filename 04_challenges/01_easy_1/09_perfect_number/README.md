# Perfect Number

The Greek mathematician Nicomachus devised a classification scheme for natural numbers, identifying each as belonging uniquely to the categories of abundant, perfect, or deficient. A perfect number equals the sum of its positive divisors — the pairs of numbers whose product yields the target number, excluding the number itself. This sum is known as the Aliquot sum.

Perfect: Sum of factors = number
Abundant: Sum of factors > number
Deficient: Sum of factors < number
Examples:

6 is a perfect number because its divisors are 1, 2, 3 and 6 = 1 + 2 + 3.
28 is a perfect number because 28 = 1 + 2 + 4 + 7 + 14.
Prime numbers 7, 13, etc are deficient by the Nicomachus classification.
Write a program that can tell if a number is perfect, abundant or deficient.

  - Problem
    - What is a natural number?
      - One of the set of positive whole numbers; a positive
        integer

    - What is the exercise problem actually solving?
      The problem of finding out if a given number
      can either be
      - Perfect
        - The range of numbers from 1
          to num supplied
          that are divisors
          AND
          That total to the same value as the
          arg number

      - Abundant
        Same as perfect - except
        that the sum total of the divisors
        are greater than the arg num
      
      - Deficient
        Same as perfect - except
        that the sum total of the divisors
        are less than the arg num
    
    - How will I handle non-natual argument 
      numbers?
      - I will use a guard clause.  I will raise a 
        RuntimeError if the argument passed is not either
        greater than or equal to 1 AND of the class Integer.
        I will use the  Object#1.is_a? Integer

    - How will I identify is the argument number passed
      is either a perfect, abundant or deficient?
      - I will create a range using the arg.
        (1..(arg - 1)
      - I will iterate over the range
        - for each num I will use the Integer#% method
          to see if the current block arg is evenly
          divisable by the argument number
        - If the current block arg is evenly divisable
          I will append to the divisor to an array
      - I will then sum total all of the divisors in the
        return array and check to see if that array
        sum totals to the arg number
        If the same return the string 'perfect'
        if greater than return 'abundant'
        if less than return 'deficient'        

  - Examples

  - Data-structures
  - Algorithm
    - raise exception if arg number is not a natural number
    - create range
    - iterate over range
      - if block arg modulo arg number .is_zero? then
      - append value to return array
    - sum total return array value
    - return string value based on == > or <  
  - Code







