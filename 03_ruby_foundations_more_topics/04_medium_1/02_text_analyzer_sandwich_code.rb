=begin
Text Analyzer - Sandwich Code
Fill out the rest of the Ruby code below so that print 
output like that shown in "Sample Output." You should 
read the text from a simple text file that you provide. 
(We also supply some example text below, but try the 
program with your text as well.)

Read the text file in the #process method and pass the 
text to the block provided in each call. Everything you 
need to work on is either part of the #process method or 
part of the blocks. You need no other additions or changes.

The text you use does not have to produce the same numbers 
as the sample output but should have the indicated format.

class TextAnalyzer
  def process
    # your implementation
  end
end

analyzer = TextAnalyzer.new
analyzer.process { puts # your implementation }
analyzer.process { puts # your implementation }
analyzer.process { puts # your implementation }

Sample Output:
3 paragraphs
15 lines
126 words
=end

class TextAnalyzer
  def initialize(file_path)
    @file_text_as_string = File.read(file_path)
  end

  def process
    yield @file_text_as_string if block_given?
  end
end

# Provided text
analyzer = TextAnalyzer.new('./sample_text.txt')
analyzer.process { |text| puts "#{text.split("\n\n").count} paragraphs" }
analyzer.process { |text| puts "#{text.split("\n").count} paragraphs" }
analyzer.process { |text| puts "#{text.split().count} paragraphs" }

# # New text to also test
analyzer = TextAnalyzer.new('./lipsom_test_text.txt')
analyzer.process { |text| puts "#{text.split("\n\n").count} paragraphs" }
analyzer.process { |text| puts "#{text.split("\n").count} paragraphs" }
analyzer.process { |text| puts "#{text.split().count} paragraphs" }

=begin
  Problem
    - How will I supply another text file?
      - lets simply use the lorem ipson to create
        and populate a new file called lorem_test_text.txt
        and save to this local directory.
    - How will we read the text is the files in the analyzer()?
      - Lets use the File#open method to save the arg
        files.
    - How will we pass the text file to the block?
      - Lets yield to the block the text using the
        File#read method.
      - lets then save the text to a local variable
        called text_as_string  
    - How will I make the block produce the following
      output '3 paragraphs'
      - Lets use the String#split method to split
        the string into paragraphs/sentences/words 
        using a regex.
          - String#split("\n\n") - for paragraphs
          - String#split("\n\n") - for sentences
          - String#split() - for words
    - How will I ensure the indicated output format?
      - Simple by using the correct block and the
        correct sequence.
        
  Examples
  Data-stuctures
  Algorithm
    Create text files
    Save the text into a file - using a path arg
      - The text file path is passed into the
        method as an arg.
    Read the text from the file into a local variable
      called file_text_as_string
    if block then Yield the file_text_as_string
    
    ***** From the block
      Use interpolation and the correct
      split regex to output the desired
      output and in the correct order.
  Code
=end


