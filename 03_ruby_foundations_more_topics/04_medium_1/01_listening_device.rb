=begin 
Listening Device

Below we have a listening device. It lets us record something that is 
said and store it for later use. In general, this is how the device 
should be used:

Listen for something, and if anything is said, record it for later use. 
If nothing is said, then do not record anything.

class Device
  def initialize
    @recordings = []
  end

  def record(recording)
    @recordings << recording
  end
end

Anything that is said is retrieved by this listening device via a block. 
If nothing is said, then no block will be passed in. The listening device 
can also output what was recently recorded using a Device#play method.

listener = Device.new
listener.listen { "Hello World!" }
listener.listen
listener.play # Outputs "Hello World!"
Finish the above program so that the specifications listed above are met.
=end

class Device
  attr_reader :recordings
  
  def initialize
    @recordings = []
  end

  def listen
    return unless block_given?
    new_record = yield
    record(new_record) if new_record
  end

  def play
    recordings.last
  end 

  def record(recording)
    @recordings << recording
  end
end

listener = Device.new
listener.listen { "Hello World!" }
listener.listen
puts listener.play == "Hello World!"

=begin
  Problem
    - Based in the example above - what is missing
      from the implementation that will allow for the
      desirec behavior?
      - It will require an instance method called listen()
      - It will require an instance method called play()
  Examples
  Data-structures
  Algorithm
  Code
=end