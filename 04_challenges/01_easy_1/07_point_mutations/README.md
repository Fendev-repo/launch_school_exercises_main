# Point Mutations

Write a program that can calculate the Hamming difference between two DNA strands.

A mutation is simply a mistake that occurs during the creation or copying of a nucleic acid, in particular DNA. Because nucleic acids are vital to cellular functions, mutations tend to cause a ripple effect throughout the cell. Although mutations are technically mistakes, a very rare mutation may equip the cell with a beneficial attribute. In fact, the macro effects of evolution are attributable by the accumulated result of beneficial microscopic mutations over many generations.

The simplest and most common type of nucleic acid mutation is a point mutation, which replaces one base with another at a single nucleotide.

By counting the number of differences between two homologous DNA strands taken from different genomes with a common ancestor, we get a measure of the minimum number of point mutations that could have occurred on the evolutionary path between the two strands.

This is called the 'Hamming distance'

GAGCCTACTAACGGGAT
CATCGTAATGACGGCCT
^ ^ ^  ^ ^    ^^
The Hamming distance between these two DNA strands is 7.

The Hamming distance is only defined for sequences of equal length. If you have two sequences of unequal length, you should compute the Hamming distance over the shorter length.

  - Problem
    - What is the exercise actually asking for?
      - Its a convoluted statement - but what is actually
        required is the count of differences between two
        strings
    
    - If the strings are different lengths - what will I do?
      I will confirm which of two dna strands is longer using
      String#length
      Once I have identified the longer string I will use the 
      String#slice method to slice the longer string to the same
      length as the shorter string
    
    - How will I then count the number of differences between the
      two strings.
      - I will first use the String#chars to create arrays of
        characters for both dna strings
        I will then use the Array#zip method to combine the two
        arrays - as subarray-pairs
        I will then call the each method on the output of the zip
        method
        In each block iteration of the each method I will
        simply count the number of times that both strings
        are identical - using the Array#uniq method       


str2.chars.zip(str1.chars).each {|sub_ar| total_count += 1 if sub_ar.uniq.length > 1 }

  - Examples
  - Data-structures
  - Algorithm
  - Code