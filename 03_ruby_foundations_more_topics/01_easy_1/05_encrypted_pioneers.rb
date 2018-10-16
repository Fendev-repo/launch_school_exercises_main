=begin
Encrypted Pioneers

The following list contains the names of individuals 
who are pioneers in the field of computing or that 
have had a significant influence on the field. 
The names are in an encrypted form, though, using a 
simple (and incredibly weak) form of encryption called Rot13.

Nqn Ybirynpr
Tenpr Ubccre
Nqryr Tbyqfgvar
Nyna Ghevat
Puneyrf Onoontr
Noqhyynu Zhunzznq ova Zhfn ny-Xujnevmzv
Wbua Ngnanfbss
Ybvf Unvog
Pynhqr Funaaba
Fgrir Wbof
Ovyy Tngrf
Gvz Orearef-Yrr
Fgrir Jbmavnx
Xbaenq Mhfr
Fve Nagbal Ubner
Zneiva Zvafxl
Lhxvuveb Zngfhzbgb
Unllvz Fybavzfxv
Tregehqr Oynapu

Write a program that deciphers and prints each of these names .
=end

=begin
	Problem
		- What is Rot13?
			- Is a simple letter substitution cipher.  It replaces each 
			letter with the letter in the alphapbet 13 places after it.
		- How will I identify what each letter coverts to in the Rot13 system?
			- Create a rot13 hash dictionary.  The dictionary will
				contain keys which are letters - and the values which are their
				corresponding rot13 letter.
				{ a: 'n', b: 'o', c: p''}
				Then this hash can be used to return the rot13 for each letter
				hsh[a.to_sym] => 'n'
		- How will I convert the encrypted words to unencrypted words?
			- I will iterate over each word and split each word into an array of chars
				then create a new array containing the corresponding Rot13 letters.
		- How will I input the names listed above to my method?
			- Lets use a local variable and a heredoc.
				- I then pass the local variable to the method - and iterate over each word.
		- How will I return the list of names from the method?
			I will interate over the array of names, and print each name to the 
			terminal - having one name per line.										
		- How will I test that the output is correct?
			- I will count the number of names returned
			- I will confirm that the first and last names have been translated correctly.
	Examples
	Data-structures
	Algorithm
		create rot13_dictionary hash # make this a seperate method
		create new_ary to store converted words
		split each name by newline
		interate over each of the encrypted sub-arrays
		split each word into chars
		interate over each chars array
		map each letter to rot13 equivalent
		append to return array
		call print_names method to print names to the screen # create this method
	Code
=end

def unencrypt_rot13(names)
  dictionary = rot13_dictionary
  ary_of_names = names.split("\n")
  all_names_decrypted = []
	

  ary_of_names.each do |name|
    decrypted_name = []

    name.chars.each do |char|
      decrypted_name << ' ' if char == ' '
      decrypted_name << dictionary[char.downcase.to_sym]
    end

    all_names_decrypted << decrypted_name.join
  end
  print_names(all_names_decrypted)
end

def print_names(ary_of_names)
  ary_of_names.each { |name| puts name }
end

def rot13_dictionary
  { 
  a: 'n', b: 'o', c: 'p', d: 'q',
  e: 'r', f: 's', g: 't', h: 'u', 
  i: 'v', j: 'w', k: 'x', l: 'y',  
  m: 'z', n: 'a', o: 'b', p: 'c', 
  q: 'd', r: 'e', s: 'f', t: 'g', 
  u: 'h', v: 'i', w: 'j', x: 'k', 
  y: 'l', z: 'm'
  }
end

names = <<-HEREDOC
Nqn Ybirynpr
Tenpr Ubccre
Nqryr Tbyqfgvar
Nyna Ghevat
Puneyrf Onoontr
Noqhyynu Zhunzznq ova Zhfn ny-Xujnevmzv
Wbua Ngnanfbss
Ybvf Unvog
Pynhqr Funaaba
Fgrir Wbof
Ovyy Tngrf
Gvz Orearef-Yrr
Fgrir Jbmavnx
Xbaenq Mhfr
Fve Nagbal Ubner
Zneiva Zvafxl
Lhxvuveb Zngfhzbgb
Unllvz Fybavzfxv
Tregehqr Oynapu
HEREDOC

unencrypt_rot13(names)
