def process_text(input_txt)
  input_txt.gsub!(/\s{2,}/, ' ')
  input_txt.rstrip!

  rev_ary = []
  input_txt.split.each_with_index do |word, idx|
    rev_ary << word.reverse if idx.odd?
    rev_ary << word if idx.even?
  end

  input_txt = rev_ary.join(' ')
  input_txt.gsub!(/\s/, ' + ')
  input_txt.end_with?('.') ? input_txt : input_txt << '.'
end

def output_each_char(text)
  text.split.each do |word|
    word.each_char do |char|
      print char == '+' ? ' ' : char
    end
  end
end

def odd_words(file_path)
  input_txt = ''
  File.open(file_path).each_char do |char|
    input_txt << char
  end

  return 'invalid characters' if input_txt.match?(/[^a-zA-Z\s+.]/)
  return 'Input was empty' if input_txt.empty?
  return 'Word(s) length > 20' if input_txt.split.any? { |wd| wd.length > 20 }

  text = process_text(input_txt)
  output_each_char(text)
end
