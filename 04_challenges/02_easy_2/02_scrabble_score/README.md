# Scrabble Score

Write a program that, given a word, computes the scrabble score for that word.

Letter Values
You'll need these:

Letter                           Value
A, E, I, O, U, L, N, R, S, T       1
D, G                               2
B, C, M, P                         3
F, H, V, W, Y                      4
K                                  5
J, X                               8
Q, Z                               10
Examples
"cabbage" should be scored as worth 14 points:

3 points for C
1 point for A, twice
3 points for B, twice
2 points for G
1 point for E
And to total:

3 + 2*1 + 2*3 + 2 + 1
= 3 + 2 + 6 + 3
= 5 + 9
= 14


- Problem
  - How will I reference the letter value?
    - I will use a hash. With the keys the letter
      and the values as the score value
      { 'A' => 1, 'B' => 3 .... }
  - How will I calculate the score for a whole word?
    - I will use the String#chars to create an array
      of letters
    - I will then interate over the array of chars
      and append the return value of placing each
      char as the key for my letter_val_hsh
      i.e
      return_ary << letter_val_hsh[current_key]
   - How will I calculate the final score?
    - I will use the Array#sum to calculate the sum
      total of all values in the array 

- Examples
- Data-structures
- Algorithm
    - create the letter_val_hsh
    - create a letter_val_arry
    - upcase all letters in arg
    - split the word into chars
    - iterate over the chars - and passing
      each letter to the block
      append the return value of each letter
      to the letter_val_arry using the following syntax
      letter_val_array << letter_val_hsh[current_letter]
   - use the Array#sum to return the total scrabble score   
- Code


