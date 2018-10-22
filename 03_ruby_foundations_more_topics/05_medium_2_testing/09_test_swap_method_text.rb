=begin
Test swap method - Text
For this exercise you'll be given a sample text 
file and a starter class. The sample text's contents 
will be saved as a String to an instance variable 
in the starter class.

The Text class includes a #swap method that can be 
used to replace all occurrences of one letter in the 
text with another letter. And for this exercise we 
will swap all occurrences of 'a' with 'e'.

Your task is to write a test suite for class Text. 
In that test suite write a test for the Text method 
swap. For this exercise, you are required to use the 
minitest methods #setup and #teardown. The #setup 
method contains code that will be executed before 
each test; #teardown contains code that will be 
executed after each test.
=end

=begin
  Problem
    - How will I save the sample text as a String?
      - I will use File.open('sample_text.txt').read, this
        will open a the file and read - and return a string.
    - How will I save the text returned using this
      expression above to read the file?
      - I will assign the return value to an instance variable.
    - What is the intended purpose of the Text#swap method?
      - it is used to replace all single character occurances within 
        a string, and replace it with another single string 
        character.
        Note: The test must replace all 'a' with 'e'
    - What objects will this test suite require to be 'setup()'
      before each test?
      - Test class object
      - String object (to hold sample text) # collaborator object
      - sample letters for test - i.e. @find = 'a' @replace = 'e'
    - What objects will this test suite require being 'teardown'
      after each test?
      - I will use the teardown() to close the open file.        
=end