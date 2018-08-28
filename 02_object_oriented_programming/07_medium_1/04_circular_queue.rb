require 'date'

class QueueObject
  attr_reader :timestamp
  attr_accessor :label

  def initialize(label)
    @label = label
    @timestamp = DateTime.now
  end
end


class CircularQueue
  attr_reader :queue

  def initialize(queue_length)
    @queue = make_queue(queue_length)
  end

  def make_queue(queue_length)
    new_hsh = {}
    (1..queue_length).each do |num|
      new_hsh[num] = []
    end
    new_hsh
  end

  def to_s
    queue
  end

  def is_queue_empty?
    @queue.values.flatten.empty?
  end

  def empty_position?
    @queue.select { |_, v| v == [] }.first
  end

  def insert(pos, item)
    @queue[pos[0]] = item
  end

  def oldest_position
    @queue.min_by do |_, v|
      if v.respond_to? :timestamp
        v.timestamp
      else
        DateTime.now
      end
    end
  end
  
  def empty_oldest_position(pos)
    @queue[pos[0]] = []
  end

  def enqueue(label)
    if empty_position?
      pos = empty_position?
      insert(pos, QueueObject.new(label))
    else
      pos = oldest_position
      empty_oldest_position(pos)
      insert(pos, QueueObject.new(label))
    end
  end

  def dequeue
    return nil if is_queue_empty?
    pos = oldest_position
    empty_oldest_position(pos)
    pos[1].label
  end
end

queue = CircularQueue.new(3)
puts queue.dequeue == nil

queue.enqueue(1)
queue.enqueue(2)
puts queue.dequeue == 1

queue.enqueue(3)
queue.enqueue(4)
puts queue.dequeue == 2

queue.enqueue(5)
queue.enqueue(6)
queue.enqueue(7)

puts queue.dequeue == 5
puts queue.dequeue == 6
puts queue.dequeue == 7
puts queue.dequeue == nil

queue = CircularQueue.new(4)
puts queue.dequeue == nil

queue.enqueue(1)
queue.enqueue(2)
puts queue.dequeue == 1

queue.enqueue(3)
queue.enqueue(4)
puts queue.dequeue == 2

queue.enqueue(5)
queue.enqueue(6)
queue.enqueue(7)
puts queue.dequeue == 4
puts queue.dequeue == 5
puts queue.dequeue == 6
puts queue.dequeue == 7
puts queue.dequeue == nil