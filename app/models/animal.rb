class Animal < ApplicationRecord
    def talk
        puts 'I am an animal, teach me how to talk'
    end
end
    
class Dog < Animal
  def talk
    puts 'Guau guau'
  end
end

class Cat < Animal
  def talk
    puts 'Miau miau'
  end
end

animal = Animal.new
animal.talk
# 'I am an animal, teach me how to talk'

animal = Dog.new
animal.talk
# 'Guau guau'

animal =Cat.new
animal.talk
# 'Miau miau'
    
    
# #WITH DECORATOR
# Este patrón de diseño nos permite que cierto comportamiento sea agregado dinámicamente a un objeto 
# sin afectar el comportamiento de otros objetos de la misma clase.

class Animal
  def talk
    puts 'I am an animal, teach me how to talk'
  end
end

class Dog 
  def initialize(animal)
    @animal = animal
  end

  def talk
    @animal.talk
    puts 'Guau guau'
  end
end

class Cat 
  def initialize(animal)
    @animal = animal
  end

  def talk
    @animal.talk
    puts 'Miau miau'
  end
end

animal = Animal.new
Dog.new(animal).talk
# 'I am an animal, teach me how to talk'
# 'Guau guau'

animal = Animal.new
Cat.new(animal).talk
# 'I am an animal, teach me how to talk'
# 'Miau miau'

# #WITH DUCK TYPING
# Duck Typing es cuando un objeto que es pasado como parámetro a una función, soporta todos los métodos y atributos 
# que se esperan que ese objeto pueda ejecutar.

class Animal
  def talk(animal)
    animal.talk
  end
end

class Dog 
  def talk
    puts 'Guau guau'
  end
end

class Cat 
  def talk
    puts 'Miau miau'
  end
end

animal = Animal.new
animal.talk(Dog.new)
# 'Guau guau'

animal = Animal.new
animal.talk(Cat.new)
# 'Miau miau'

