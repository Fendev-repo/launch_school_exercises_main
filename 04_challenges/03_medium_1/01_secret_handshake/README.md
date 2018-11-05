# Secret Handshake

Write a program that will take a decimal number, and convert it to the appropriate sequence of events for a secret handshake.

There are 10 types of people in the world: Those who understand binary, and those who don't. You and your fellow cohort of those in the "know" when it comes to binary decide to come up with a secret "handshake".

1 = wink
10 = double blink
100 = close your eyes
1000 = jump


10000 = Reverse the order of the operations in the secret handshake.
handshake = SecretHandshake.new 9
handshake.commands # => ["wink","jump"]

handshake = SecretHandshake.new "11001"
handshake.commands # => ["jump","wink"]
The program should consider strings specifying an invalid binary as the value 0.

  - Problem
    - What is this exercise really about?
      - This exercise is about taking a decimal number 
        converting the decimal number to a binary number
        then calculating how many of the secret handshake items are
        included - and in what order

   - How will I convert the decimal number to a binary number?
    - I will use the Integer#to_s(2) to caluculate the binary
      number

      31.to_s(2)  => "11111"

   - How will I then work out what secret handshakes are in
     the binary number?
     - First I will create an Hash of secret handshake items
        The hash will store both the handshake string, but
        also the number of times the handshake string is to
        be included in the return array

       {  1000 => { hand_shake: 'jump', qty: nil }, 
          100  => { hand_shake: 'close your eyes', qty: nil} } 
    
  - I will iterate over the handshake hsh using the 
      Hash#each_key
    
  - Then iterating over the largest number first, I 
    would use the Numeric#divmod method to calculate if
    and how many of the secret handshake items are 
    included?
      
    bin_num = 31.to_s(2)

    reverse = false

    11111.divmod(10_000) => [1, 1111]
    bin_num = (11111 - 10_000)
    1111.divmod(1000) => [1, 111]
    bin_num =  (1111 - 1000)
    111.divmod(100) => [1, 11]
    bin_num = (111 - 100)
    11.divmod(10) => [1, 1]
    bin_num = (11 - 10)
    1.divmod(1) => [1, 0]

  - During each interation if there is a secret handshake
    item - the I will append a scecret handshake item to 
    a return array

  - During the interation if there is a reverse 10_000
    item I will reverse the array
    hand_shake_hsh.include?    


  - Examples
  - Data-structure
  - Algorithm
    - Create handshake_item_hsh
    - Create return array
    - Create bin_number
    - Iterate over the handshake_item_hsh keys
      - Utilize Numeric#divmod on bin_number
        update handshake_item_hsh if number is included
        deduct the current hsh key value from bin number

    - Iterate over handshake_item_hsh
      - if key item has qty > 0 then append to 
        return array

    - If handshake_item_hsh includes key 10_000
      qty > 0 - then reverse the array        

  - Code








