# Series
Write a program that will take a string of digits and give you all the possible consecutive number series of length n in that string.

For example, the string "01234" has the following 3-digit series:

012
123
234
And the following 4-digit series:

0123
1234
And if you ask for a 6-digit series from a 5-digit string, you deserve whatever you get.

- Problem
  - How will I slice the string into substrings?
    - I will use the Enumerable#each_cons to split
      the string into an array of substrings
      - passing in the length as the n arg
  - How will I convert each string in each subarray
    to integers
      - I will iterate through the sub-arrays and
        mutate each string to an integer.
  - How will I return all sub-arrays in an array?
    - I will assign the local variable new_array
      and then append all sub-arrays to that   

- Examples
- Data-structures
- Algorithm
- Code