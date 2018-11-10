# Luhn Algorithm
The Luhn formula is a simple checksum formula used to validate a variety of identification numbers, such as credit card numbers and Canadian Social Insurance Numbers.

The formula verifies a number against its included check digit, which is usually appended to a partial number to generate the full number. This number must pass the following test:

Counting from rightmost digit (which is the check digit) and moving left, double the value of every second digit.
For any digits that thus become 10 or more, subtract 9 from the result.
1111 becomes 2121.
8763 becomes 7733 (from 2×6=12 → 12-9=3 and 2×8=16 → 16-9=7).
Add all these digits together.
1111 becomes 2121 sums as 2+1+2+1 to give a checksum of 6.
8763 becomes 7733, and 7+7+3+3 is 20.
If the total (the checksum) ends in 0 (put another way, if the total modulus 10 is congruent to 0), then the number is valid according to the Luhn formula; else it is not valid. So, 1111 is not valid (as shown above, it comes out to 6), while 8763 is valid (as shown above, it comes out to 20).

Write a program that, given a number

Can check if it is valid per the Luhn formula. This should treat, for example, "2323 2005 7766 3554" as valid.
Can return the checksum, or the remainder from using the Luhn method.
Can add a check digit to make the number valid per the Luhn formula and return the original number plus that digit. This should give "2323 2005 7766 3554" in response to "2323 2005 7766 355".
About Checksums:

A checksum has to do with error-detection. There are a number of different ways in which a checksum could be calculated.

When transmitting data, you might also send along a checksum that says how many bytes of data are being sent. That means that when the data arrives on the other side, you can count the bytes and compare it to the checksum. If these are different, then the data has been garbled in transmission.

In the Luhn problem the final digit acts as a sanity check for all the prior digits. Running those prior digits through a particular algorithm should give you that final digit.

It doesn't actually tell you if it's a real credit card number, only that it's a plausible one. It's the same thing with the bytes that get transmitted -- you could have the right number of bytes and still have a garbled message. So checksums are a simple sanity-check, not a real in-depth verification of the authenticity of some data. It's often a cheap first pass, and can be used to quickly discard obviously invalid things.


  - Problem
    - What is the exercise about?
      - This exercise is about using the Luhn algorithm to do the following;
        - check if a number is valid
        - create and return a checksum
        - create and append a checksum to a number

      - What is a checksum?
        - A checksum is the sum of product of executing the Luhn
          algorithm

      - How do I use the Luhn algorithm to validate an arg number that
        alreaddy has a checksum attached to the end of the number?
        - Starting from the right
          - double every second number
            - if the number is greater than 10 - deduct 9
        - Sum the product of those numbers
        - Divide by 10
          - if the number divides evenly - i.e. no remainder
            then the number is valid.
            if the number has a remainder - the number is not
            valid.
      - How do I calculate the checksum
        - using the above - the check sum is the sum
          of the numbers  

  - Examples
    
      - def test_create_other_valid_number
      -   number = Luhn.create(873_956)
      -   assert_equal 8_739_567, number
      - end

       - 8 7 3 9 5 6 ?
       - 8 5 3 9 5 3 ?
       - 33 + ? = 40 
       - => 7

 
       - def test_create_valid_number
       -   number = Luhn.create(123)
       -   assert_equal 1230, number
       - end

        - 1 2 3 0
        - 2 2 6 0
        - 2 + 2 + 6 = 10
        - 10 + ? = 10
        - => 0

      
      - def test_create_other_valid_number
      -   number = Luhn.create(873_956)
      -   assert_equal 8_739_567, number
      - end

        - 8 7 3 9 5 6 ?
        - 8 5 3 9 5 3 

  - Data-structures
  - Algorithm
  - Code

























