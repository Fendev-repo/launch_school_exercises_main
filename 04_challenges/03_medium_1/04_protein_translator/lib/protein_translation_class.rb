# Class that will translate RNA sequences into proteins
class Translation
  def initialize(rna_arg)
    @protein_ary = identify_proteins(rna_arg)
  end

  def condon_protein_pairs
    {
      'AUG' => 'Methionine', 'UUU' => 'Phenylalanine',
      'UUC' => 'Phenylalanine', 'UUA' => 'Leucine',
      'UUG' => 'Leucine', 'UCU' => 'Serine',
      'UCC' => 'Serine', 'UCA' => 'Serine',
      'UCG' => 'Serine', 'UAU' => 'Tyrosine',
      'UAC' => 'Tyrosine', 'UGU' => 'Cysteine',
      'UGC' => 'Cysteine', 'UGG' => 'Tryptophan',
      'UAA' => 'STOP', 'UAG' => 'STOP', 'UGA' => 'STOP'
    }
  end

  def identify_proteins(rna_arg)
    pairs = condon_protein_pairs

    rtn_ary = []
    rna_arg.chars.each_slice(3) { |cdn| rtn_ary << pairs[cdn.join] }
    rtn_ary
  end

  def return_protein_vals
    raise InvalidCodonError.new, 'Invalid condon' if @protein_ary.compact.empty?
    return 'STOP' if @protein_ary.all? { |cdn| cdn == 'STOP' }

    @protein_ary.delete('STOP')
    @protein_ary.length > 1 ? @protein_ary[0, 3] : @protein_ary.first
  end

  def self.of_codon(rna_arg)
    trans = Translation.new(rna_arg)
    trans.return_protein_vals
  end

  def self.of_rna(rna_arg)
    of_codon(rna_arg)
  end
end

class InvalidCodonError < ArgumentError
  # Used to raise custom exception
end
