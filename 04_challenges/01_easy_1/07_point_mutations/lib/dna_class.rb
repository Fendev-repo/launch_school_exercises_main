# Write a program that can calculate the Hamming difference
# between two DNA strands.
class DNA
  def initialize(dna_one)
    @dna_one = dna_one
  end

  def count_differences
    count = 0

    @dna_one.chars.zip(@dna_two.chars).each do |sub_ary|
      next if sub_ary.compact.length < 2

      count += 1 if sub_ary.uniq.length > 1
    end
    count
  end

  def hamming_distance(dna_two)
    @dna_two = dna_two
    count_differences
  end
end
