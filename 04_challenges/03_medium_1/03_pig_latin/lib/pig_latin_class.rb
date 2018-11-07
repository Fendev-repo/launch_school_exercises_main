# Class interprets Piglatin
class PigLatin
  def self.set_class_vars
    @@word_status = {}
    @@word_ary = []
  end

  def self.default_word_status(str)
    str.split.each { |wd| @@word_status[wd] = :not_mutated }
  end

  def self.append_ay(mutated_wd, wrd)
    @@word_status[wrd] = :mutated
    @@word_ary << (mutated_wd << 'ay')
  end

  def self.mutate_triple_chr_patterns!
    @@word_status.each_pair do |wd, status|
      next unless status == :not_mutated

      word = wd.dup
      if wd.match?(/^(thr|sch)/)
        append_ay(word << word.slice!(0, 3), wd)
      end
    end
  end

  def self.mutate_double_chr_patterns!
    @@word_status.each_pair do |wd, status|
      next unless status == :not_mutated

      word = wd.dup
      if wd.match?(/^(ch|qu|th)/)
        append_ay(word << word.slice!(0, 2), wd)
      elsif wd.match?(/^(ye|xe)/)
        append_ay(word << word.slice!(0), wd)
      elsif wd.match?(/^(yt|xr)/)
        append_ay(word, wd)
      end
    end
  end

  def self.mutate_single_chr_patterns!
    @@word_status.each_pair do |wd, status|
      next unless status == :not_mutated

      word = wd.dup
      if wd.match?(/^[bcdfghjklmnpqrstvwxyz]qu/)
        append_ay(word << word.slice!(0, 3), wd)
      elsif wd.match?(/^[bcdfghjklmnpqrstvwxyz]/)
        append_ay(word << word.slice!(0, 1), wd)
      elsif wd.match?(/^[aeiou]/)
        append_ay(word, wd)
      end
    end
  end

  def self.translate(str)
    set_class_vars

    default_word_status(str)

    mutate_triple_chr_patterns!
    mutate_double_chr_patterns!
    mutate_single_chr_patterns!

    @@word_ary.join(' ')
  end
end
