# Sieve of Eratosthenes

Write a program that uses the Sieve of Eratosthenes to find all the primes from 2 up to a given number.

The Sieve of Eratosthenes is a simple, ancient algorithm for finding all prime numbers up to any given limit. It does so by iteratively marking as composite (i.e. not prime) the multiples of each prime, starting with the multiples of 2.

Create your range, starting at two and continuing up to and including the given limit. (i.e. [2, limit]).

The algorithm consists of repeating the following over and over:

take the next available unmarked number in your list (it is prime)
mark all the multiples of that number (they are not prime)
Repeat until you have processed each number in your range. When the algorithm terminates, all the numbers in the list that have not been marked are prime. The wikipedia article has a useful graphic that explains the algorithm.

Notice that this is a very specific algorithm, and the tests don't check that you've implemented the algorithm, only that you've come up with the correct list of primes.

- Problem
  - What is a prime number?
    - A prime number is all numbers greater than 1 and
      only divisable by itself and 1.
  - How will I manage and mark the non primes?
    - I will use a key value hash for each number
      in the range { 2 => :prime, 2 => :prime, 4 => :not_prime, 
                     5 => :not_yet_validated }
  - How will I create the hash range of key/value pairs?
    - I will use the arg value to create the key/value
      pairs.
      (2..arg).to_a.each_with_object { |num, hsh| hsh[num] = :not_yet_validated } 

  - How will I iterate and mark each number hash as being
    a :non_prime number?
    STEP A: Find next prime
      - as per the algorithm - I need to iterate through the range and
      first identify if the current number is prime?
      I will use the current_num.downto(2) to then use the
      modulo to see if there are any numbers that can be used to 
      divide the current number with no remainders.
      when there is a number that is both :not_yet_validated and
      has no numbers less than itself and more than 1 that cannot 
      be divided equally with - is a prime
    STEP B: Cross out the all multiples of the current prime
      - as the the algorithm - I then need to use the newly found
        prime and then multiply it 
        2 * 2 = 4
        2 * 3 = 6
        2 * 4 = 8
        2 * 5 = 10
      So I will simply use a range (2..num_supplied)
      During each iteration I will then times the current range
      num by the newly found prime.
      The return value of this expression will then be used to
      mark-off as :not_prime all the multiples of the newly
      found prime.
  - How will I return an array of primes that I have identified?
    - once the loop to find primes has completed - I will then
      use the Hash#select method to select key/val pairs that
      have this value = :prime
      I will then append just the key prime num into a new array
      and return that array.  
      
- Examples
- Data-structures
- Algorithm
  create the range_hsh consisting of key/value pairs
    and set default as number => :not_yet_validated
  Interate over range_hsh and if a value is :not_yet_validated
    I will then check if that number is a prime
    - Check if prime - sub-loop
      using another range (current value / key)downto(2)
      is this number evenly divisable by any number
      down to 2 with zero remainders?
      if so - then this number is a prime
        - mark this key-value pair as :prime
      if so - then mark this numer as :not_prime
    
    - Use newly found prime to mark-off all multiples - sub-loop
      using another range (2..num_arg) # arg is the value passed to the method
      To then mark off the multiples
        range_hsh[(newly_found_prime * 2).to_sym] = :not_prime
        newly_found_prime * 3
        newly_found_prime * 4
        newly_found_prime * 5
        etc - all the way to arg value in range

  Iterate over the range_hsh selecting only the :prime values
    and return only the keys which are the prime integers
    
- Code




