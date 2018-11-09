# Circular Buffer

A circular buffer, cyclic buffer or ring buffer is a data structure that uses a single, fixed-size buffer as if it were connected end-to-end.

A circular buffer first starts empty and of some predefined length. For example, this is an empty 7-element buffer:

[ ][ ][ ][ ][ ][ ][ ]
Assume that a 1 is written into the middle of the buffer (exact starting location does not matter in a circular buffer):

[ ][ ][ ][1][ ][ ][ ]
Then assume that two more elements are added, or written to the buffer — 2 & 3 — which get appended after the 1:

[ ][ ][ ][1][2][3][ ]
If two elements are then read, or removed from the buffer, the oldest values inside the buffer are removed. The two elements removed, in this case, are 1 & 2, leaving the buffer with just a 3:

[ ][ ][ ][ ][ ][3][ ]
If the buffer has 7 elements then it is completely full:

[6][7][8][9][3][4][5]
When the buffer is full an error will be raised, alerting the client that further writes are blocked until a slot becomes free.

The client can opt to overwrite the oldest data with a forced write. In this case, two more elements — A & B — are added and they overwrite the 3 & 4:

[6][7][8][9][A][B][5]
Finally, if two elements are now removed then what would be returned is not 3 & 4 but 5 & 6 because A & B overwrote the 3 & the 4 yielding the buffer with:

[ ][7][8][9][A][B][ ]

  - Problem
    - What is the exercise really about?
      - This problem is about timestamps, maintaining a maximun number
        of elements, and controlling the correct sequence of taking
        elements off - i.e. the oldest elements are to be taken
        'next' and returned

    - Based on the test suite - what methods are behavior needs to be
      implemented?
      
      - CircularBuffer#read
        - read means - deduct from buffer and return elements
      
      - CircularBuffer#write
        - write means - add element to buffer

      - CircularBuffer#write!
        - write! 'bang' either
          - overides existing elements - if buffer is full
            overiding the oldest elements in order
          - or simply adds new elements if the buffer has
            adequate space

      - CircularBuffer#initialize()
        - Based on the test suite - this arg defines the length
          of the circular buffer

      - How will I maintain the correct buffer length?
        - I will assign the arg length passed to the initialize method
          to an instance variable called @buffer_length
          During each write or write! I will check that the
          actual buffer + 1 is not greater than @buffer_length 

      - How will I store the buffer elements?
        I will use an Array to store the buffer elements

      - How will I maintain the correct timestamp order of each 
        element?
        - I will store each element in the buffer array as a
          hash key/value pair?
          - key will be a Time.now.to_f - which creates a float number
            based on the time itn was instantiated
          - the value will be the argument object passed to the
            write method

      - How will I ensure that all elements stay in order?
        I will the Array#sort method

      - How will I add elements to the buffer_array?
        I will just append new elements using the Array#<<

      - How will I ensure that I do not override existing elements
        unless the write! (bang!) method is invoked?
        - When the write method is used, I will first confirm
          that the length of the buffer_array is atleast 1 element
          less than the @max_buffer_length
          if the buffer_array is already equal to @max_buffer_length
          then I will not add the element
        - When the write! (bang!) is invoked, I will simply overwrite
          the oldest element.          

  - Examples
  - Data-structures
  - Algorithm
    - Assign @max_buffer_length the arg passed to the initialize()
    -   
  - Code











