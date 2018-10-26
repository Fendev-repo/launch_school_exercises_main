# Anagrams
Write a program that, given a word and a list of possible anagrams, 
selects the correct sublist that contains the anagrams of the word.

For example, given the word "listen" and a list of candidates like 
"enlists" "google" "inlets" "banana" the program should return a 
list containing "inlets". Please read the test suite for exact 
rules of anagrams.

  - Problem
    - What is an anagram?
      - An anagram is a word or phrase formed by rearranging 
        the letters of a different word or phrase, typically 
        using all the original letters exactly once
      
      - What will we call the main nouns for this problem?
        given_word = main word to be used as the anagram blueprint
        possible_anagram_list = the collection of words that are 
          to be evaluated as possible anagrams      
        anagrams = all words that are anagrams of the given_word
      
      - How will I identify an anagram?
        - The number of letters are the same
        - The quantity of each letters are the same

      - How will I iterate over the possible_anagram_list?
        - I will use the Array#each

      - How will I compare the current word against the
        given_word?
        - If the length of the current word is not the
          same length as the given_word, then I will
          go to the next interation
        - If the lengths are the same, then I will
          compare then quantity of letters each
          word has - if there is a match - the 
          current word is an anagram of the given_word

      - What data-structure will I used to compare the quantity
        of letters in two words?
        - I will split the given_word into chars
          I will the count the number of instances
          of each char.
          I will use a hash
          'word' = {:w => 1, :o => 1, :r => 1, :d => 1}
        - I will then iterate over each_pair in hash of
          letters from the given_word
          and use the String#count to compare against
          the current word being evaluated
          if during the iteration the block returns
          a false, then the word is not an anagram

      - How will I return the list of correct anagrams?
        For each iteration of the loop listed above
        I will append the current word to a return array           

  - Examples
  - Data-structures
  - Algorithm
  - Code 