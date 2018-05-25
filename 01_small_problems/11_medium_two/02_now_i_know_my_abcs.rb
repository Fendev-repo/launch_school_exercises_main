=begin
  A collection of spelling blocks has two letters per block, as shown in this list:

  B:O   X:K   D:Q   C:P   N:A
  G:T   R:E   F:S   J:W   H:U
  V:I   L:Y   Z:M
  This limits the words you can spell with the blocks to just those words that do not use both letters from any given block. Each block can only be used once.

  Write a method that returns true if the word passed in as an argument can be spelled from this set of blocks, false otherwise.

  Examples:
=end

# 2 letters per block
# can only use 1 letter per block
# can only use block once per word

def spelling_blocks
  {
  :B => :O, :O => :B,    
  :X => :K, :K => :X,   
  :D => :Q, :Q => :D,   
  :C => :P, :P => :C,    
  :N => :A, :A => :N,
  :G => :T, :T => :G,
  :R => :E, :E => :R, 
  :F => :S, :S => :F, 
  :J => :W, :W => :J,  
  :H => :U, :U => :H, 
  :V => :I, :I => :V,   
  :L => :Y, :Y => :L,   
  :Z => :M, :M => :Z
  }
end


def block_word?(str)
  blocks = spelling_blocks
  sym_chars = str.upcase.chars.map(&:to_sym)
  return false unless sym_chars.uniq == sym_chars
  result_ary = sym_chars.each_with_object([]) do |char_sym, ary|
    ary << sym_chars.include?(blocks[char_sym])
  end
  result_ary.all? { |result| result == false }
end


puts block_word?('BATCH') == true
puts block_word?('BUTCH') == false
puts block_word?('jest') == true
puts block_word?('jjest') == false








