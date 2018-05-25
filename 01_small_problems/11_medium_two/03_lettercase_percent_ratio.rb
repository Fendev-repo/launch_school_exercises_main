=begin
  In the easy exercises, we worked on a problem where we had to count the number of uppercase and lowercase characters, as well as characters that were neither of those two. Now we want to go one step further.

  Write a method that takes a string, and then returns a hash that contains 3 entries: one represents the percentage of characters in the string that are lowercase letters, one the percentage of characters that are uppercase letters, and one the percentage of characters that are neither.

  You may assume that the string will always contain at least one character.

  Examples
=end

def ledger
  {
   sum_totals:  { lowercase: 0, uppercase: 0, neither: 0 },
   percentages: { lowercase: 0, uppercase: 0, neither: 0 }
  }
end

def calculate_sum_totals(new_ledger, str)
  chars = str.chars
  chars.each do |char|
    if /[a-z]/.match(char)
      new_ledger[:sum_totals][:lowercase] += 1
    elsif /[A-Z]/.match(char)
      new_ledger[:sum_totals][:uppercase] += 1
    else
      new_ledger[:sum_totals][:neither] += 1
    end
  end
  new_ledger
end

def calculate_percentages(updated_ledger, str)
  sum = str.chars.length.to_f
  lower = updated_ledger[:sum_totals][:lowercase].to_f
  upper = updated_ledger[:sum_totals][:uppercase].to_f
  neither = updated_ledger[:sum_totals][:neither].to_f

  updated_ledger[:percentages][:lowercase] = ((lower / sum) * 100).round(1)
  updated_ledger[:percentages][:uppercase] = ((upper / sum) * 100).round(1)
  updated_ledger[:percentages][:neither] = ((neither / sum) * 100).round(1)
  updated_ledger[:percentages]
end

def letter_percentages(str)
  new_ledger = ledger
  updated_ledger = calculate_sum_totals(new_ledger, str)
  final_ledger = calculate_percentages(updated_ledger, str)
end

puts letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
puts letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
puts letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }
