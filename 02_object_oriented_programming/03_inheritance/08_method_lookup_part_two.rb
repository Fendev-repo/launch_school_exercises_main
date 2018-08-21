=begin
Using the following code, determine the lookup path used when invoking cat1.color. 
Only list the 
classes and modules that Ruby will check when searching for the #color method.  

class Animal
end

class Cat < Animal
end

class Bird < Animal
end

cat1 = Cat.new
cat1.color

=end


class Animal
end

class Cat < Animal
end

class Bird < Animal
end

cat1 = Cat.new
# cat1.color

# Method Lookup Path
# Cat
# Animal
# Object
# Kernel
# BasicObject

p Cat.ancestors
# => [Cat, Animal, Object, Kernel, BasicObject]