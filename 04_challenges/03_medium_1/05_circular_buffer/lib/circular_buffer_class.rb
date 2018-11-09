# Cyclic buffer or ring buffer
class CircularBuffer
  def initialize(buffer_length)
    @max_buffer_length = buffer_length
    @buffer = {}
  end

  def clear
    @buffer.clear
  end

  def buffer_full?
    @buffer.length >= @max_buffer_length
  end

  def read
    raise BufferEmptyException, 'Buffer empty' if @buffer.empty?

    @buffer.delete(@buffer.min.first)
  end
  alias read_one_out read

  def write!(new_buffer_element)
    return if new_buffer_element.nil?

    read_one_out if buffer_full?
    write(new_buffer_element)
  end

  def write(new_buffer_element)
    raise BufferFullException, 'Buffer full' if buffer_full?
    return if new_buffer_element.nil?

    @buffer[Time.now.to_f] = new_buffer_element
  end

  class BufferEmptyException < IndexError
    # Custom exception for when CircularBuffer#read method
    # called on an empty buffer
  end

  class BufferFullException < IndexError
    # Custom exception for when CircularBuffer#read method
    # called on a full buffer
  end
end
