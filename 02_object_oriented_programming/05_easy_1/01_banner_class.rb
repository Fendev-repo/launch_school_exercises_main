require 'pry-byebug'

class Banner
  def initialize(message, length = nil)
    @message = message
    @length = length
  end

  def to_s
    [horizontal_rule, empty_line, message_line, empty_line, horizontal_rule].join("\n")
  end

  private

  def message
    @message
  end

  def horizontal_rule
    "+#{'-' * line_width }+"
  end

  def line_width
    return @length unless @length.nil?

    length = @message.length
    length = length + 2
  end

  def empty_line
    "|#{' ' * line_width}|"
  end

  def message_line
   "|" + "#{@message}".center(line_width, ' ') + '|'
  end
end


banner = Banner.new('To boldly go where no one has gone before.')
puts banner

banner = Banner.new('')
puts banner

banner = Banner.new('To boldly go where no one has gone before.', 90)
puts banner