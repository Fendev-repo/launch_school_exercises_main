# Beer Song
Write a program that can generate the lyrics of the 99 Bottles of Beer song. See the test suite for the entire song.

  - Problem
    - Based on the above description and the test suite supplied
      - I will need to create a class with two method
        - BeerSong.new.lyrics() => entire song
        - BeerSong.new.verse(Integer) => verse of song

    - How will I create each verse?
      - I will simply iterate the following string
        and interpolate the bottle values
    - How will I calculate the num_bottles value based on the
      verse argument supplied?
      - I will just use the number argument as the interpolated 
        bottle num value
      - If the arg number is zero? then I will return the last 
        statement    
      "No more bottles of beer on the wall, no more bottles of beer."
      "Go to the store and buy some more, 99 bottles of beer on the wall."
        
    - What are the verse variations?
    Standard: 99 - 2
    - 99 bottles of beer on the wall, 99 bottles of beer.
    - Take one down and pass it around, 98 bottles of beer on the wall.

    Singular bottle on wall - first sentence: verse 2
    - 2 bottles of beer on the wall, 2 bottles of beer.
    - Take one down and pass it around, 1 bottle of beer on the wall.

    Plural bottle on wall - second sentence: verse 1
    - 1 bottle of beer on the wall, 1 bottle of beer.
    - Take it down and pass it around, no more bottles of beer on the wall.

    End verse - verse 0
    - No more bottles of beer on the wall, no more bottles of beer.
    - Go to the store and buy some more, 99 bottles of beer on the wall.

  - Examples
  - Data-structures
  - Algorithm
  - Code