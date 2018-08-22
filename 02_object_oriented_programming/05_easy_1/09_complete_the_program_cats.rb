class Pet
  def initialize(name, age, color)
    @name = name
    @age = age
    @color = color
  end

  def to_s
    self_class = self.class.to_s.downcase
    puts "My #{self_class} #{@name} is #{@age} years old and has #{@color} fur."
  end
end

class Cat < Pet
end

pudding = Cat.new('Pudding', 7, 'black and white') 
butterscotch = Cat.new('Butterscotch', 10, 'tan and white')

puts pudding 
# => 'My cat Pudding is 7 years old and has black and white fur.'


puts butterscotch 
# => 'My cat Butterscotch is 10 years old and has tan and white fur.'
