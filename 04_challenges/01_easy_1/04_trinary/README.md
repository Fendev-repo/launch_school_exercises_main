# Trinary

Write a program that will convert a trinary number, represented as a string (e.g. '102012'), to its decimal equivalent using first principles (without using an existing method or library that can work with numeral systems).

Trinary numbers can only contain three symbols: 0, 1, and 2. Invalid trinary entries should convert to decimal number 0.

The last place in a trinary number is the 1's place. The second to last is the 3's place, the third to last is the 9's place, etc.

"102012"
    1       0       2       0       1       2    # the number
1*3^5 + 0*3^4 + 2*3^3 + 0*3^2 + 1*3^1 + 2*3^0    # the value
  243 +     0 +    54 +     0 +     3 +     2 =  302

- Problem
  - What is a trinary number?
    - A trinary number is a number system that consists of
      three symbols - 0, 1, 2.
    - How will I ensure that the string trinary number
      consists of the symbols 0,1,2 only?
      - I will use a guard clause that utilizes a regex
        If string contains anything other that 0,1,2
        then return zero [^012]

    - How will I convert the string trinary number into
      a decimal number?
      - First lets split the string arg using the String#chars
      - then lets reverse the order using Array#reverse
      - then lets use the Array#each_with_index to iterate
        through each number.
        Using the index block parameter as the exponent
        calculate the decimal number (number * (TRINARY * EXPONENT))
        append each decimal number to a return_ary
      - Then use the Array#sum to return the decimal integer
        which is the sum totalled decimal number  
- Examples
- Data-structure
- Algorithm
- Code 