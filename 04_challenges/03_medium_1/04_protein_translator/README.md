# Protein Translation

Lets write a program that will translate RNA sequences into proteins. RNA can be broken into three nucleotide sequences called codons, and then translated to a polypeptide like so:

RNA: "AUGUUUUCU" => translates to

Codons: "AUG", "UUU", "UCU"
=> which become a polypeptide with the following sequence =>

Protein: "Methionine", "Phenylalanine", "Serine"
There are 64 codons which in turn correspond to 20 amino acids; however, all of the codon sequences and resulting amino acids are not important in this exercise.

There are also four terminating codons (also known as 'STOP' codons); if any of these codons are encountered (by the ribosome), all translation ends and the protein is terminated. All subsequent codons after are ignored, like this:

RNA: "AUGUUUUCUUAAAUG" =>

Codons: "AUG", "UUU", "UCU", "UAA", "AUG" =>

Protein: "Methionine", "Phenylalanine", "Serine"
Note the stop codon terminates the translation and the final methionine is not translated into the protein sequence.--

Below are the codons and resulting Amino Acids needed for the exercise.

Codon Protein
AUG Methionine
UUU, UUC  Phenylalanine
UUA, UUG  Leucine
UCU, UCC, UCA, UCG  Serine
UAU, UAC  Tyrosine
UGU, UGC  Cysteine
UGG Tryptophan
UAA, UAG, UGA STOP

  - Problem
    - What is the exercise actually solving?
      - The exercise is about interpreting a 'RNA' sequence.
        The 'RNA' sequence can be 3, 6 or 9 characters in 
        length. Each 'RNA' sequence corresponds to a 'Protein'
      
      - What are the methods supplied in the test suite, and
        what behavior needs to be implemented?
        - Translation#of_codon(codon)
          Takes a 'RNA' and returns the corresponding
          protein(s)
        - Translation#of_rna(strand)
          Takes a 'RNA' and returns the corresponding
          protein(s)

      - How will I identify a 'STOP' condon?
        - When I iterate over the RNA's
          I will exit out of the loop if
          a 'Stop' is detected

      - How will I lookup and store the data - matching
        each condon with its protein?
        - I will use a hash to store key/value pairs
          { 'AUG' => 'Methionine', 'UUU' => 'Phenylalaine', ... }
    
      - How will I process the RNA sequences that are
        longer than 3 chars?
        - If the arg is already an array of Condons
          then proceed with interpretation
          else
          if the arg is a string, I will first use
          String#slice to slice the sting to 9 chars
          'hellowhowareyou'.slice(0..9)
          Then I will use the String#chars to create
          an array, the use the Array#each_slice(3) to 
          and the Array#join and append the return
          value to a variable

       - How will I iterate over the RNA and return
         the correct protein?
        - Once I have the RNA in the correct format
          I will then iterate over the RNA and append
          the return value to an array


  - Examples
  - Data-structure
  - Algorithm
    - Create the condon_protein_hsh
    - Create class variable rna_array
    - Create class variable rtn_protein_array

    - Prepare RNA array
      - If RNA arg is already an array
        then assign arg to rna_array 

      - If RNA arg is string then slice to correct
        length, then append each slice to a new array

    - Interpet RNA
      - Interate over the rna_array
        - append all matching condons using the 
          condon_protein_hsh
          and append return values to the 
          rtn_protein_array

    - Return correct Data-Structure
      - if rtn_protein_array is only one RNA
        then return string of that RNA
        else
        return rtn_protein_array

  - Code
