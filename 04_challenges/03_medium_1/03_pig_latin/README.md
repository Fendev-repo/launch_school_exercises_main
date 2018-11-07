# Pig Latin

Pig Latin is a made-up children's language that's intended to be confusing. It obeys a few simple rules (below), but when it's spoken quickly it's really difficult for non-children (and non-native speakers) to understand.

Rule 1: If a word begins with a vowel sound, add an "ay" sound to the end of the word.
Rule 2: If a word begins with a consonant sound, move it to the end of the word, and then add an "ay" sound to the end of the word.
There are a few more rules for edge cases, and there are regional variants too.

 - Problem
  - What is a vowel?
    - The letters a, e, i, o, u
  - What is a consonant?
    - The letters b, c, d, f, g, h, j, k, l, m, n, p, q, r, s
                  t, v, w, x, y, z
  - Based on the test suite - what are the full set of rules?
    - Word begins with vowel => append 'ay' to end of word
    - Word begins with consonant => move for word char, and append 'ay'
    - Word begins with 'ch' => move 'ch' to end of word and append 'ay'
    - Word begins with 'qu' => move 'qu' to end of word and append 'ay'
    - Word begins with consonant and before 'qu' => move consonant and 'qu'
      to end of the word and append 'ay'
    - Word begins with 'th' => move 'th' to end of word and append 'ay'
    - Word begins with 'thr' => move 'thr' to end of word and append 'ay'
    - Word begins with 'sch' => move 'sch' to end of word and append 'ay'
    - Word begins with 'ye' => move 'ye' to end of word and append 'ay'
    - Word begins with 'yt' => append 'ay' to the end of the word
    - Word begins with 'xe' => move 'x' to the end of the word and append 'ay'
    - Word begins with 'xr' => append 'ay' to the end of the word  

  - What is the most terse, and precise way to ensure the above rules?
    - I think the best way to manange the complexity of these
      rules - is to use regex(s) inside of three different methods
      
      - Method 1: Single characters pattern search
        - identifies all single vowel and consonant words

        - Sub-option A # Word begins with consonant - and then
          has the letters 'qu'
          /^[bcdfghjklmnpqrstvwxyz]qu/

        - Sub-option B # string starts with a vowel
          /^[aeiou]/ 

        - Sub-option C # word starts with a consonant 
          /^[bcdfghjklmnpqrstvwxyz]/

      
      - Method 2: Double character pattern search
        - identifies all double vowel and consonant words
          
        - Sub-option A # Move two and append 'ay'
          /^(ch|qu|ye)/ # string starts with these chars

        - Sub-option B # Just append 'ay'
          /^(yt|xr)/

        - Sub-option C # Just move x
          /^xe/


      - Method 3: Triple character pattern search
        - identifies all double vowel and consonant words

        - Sub-option A # Move three and append 'ay'
          ^(thr|sch)


  - How will I iterate over the words?
    - I will use the String#split method to convert the arg string
      into an array of strings

  - How will slice the characters from the words?
    - I will use the String#slice(0, num_of_chars) methods

  - How will I append the 'ay' to the strings?
    - As 'ay' is used in multiple places - I will create
      an instance method that appends 'ay' to the string arg
      and returns the mutates string

  - How will I return a string of multiple mutated words?
    - Once I have made the required mutatations to each
      individual string/word - I will then use the 
      Array#join(' ') to join each of the array elements      


 - Examples
 - Data-structure
 - Algorithm
  - String#split the string into an array of sub-strings
  - Assign the array of sub-strings to an instance variable
    called @sub_str_ary 
  - Iterate over the array
    - pass each word to the single_chr_pattern_mutate method
    - pass each word to the double_chr_pattern_mutate method
    - pass each word to the triple_chr_pattern_mutate method
  - call the Array#join(' ') method to return string  
    
 - Code

