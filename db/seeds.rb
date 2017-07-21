class Seed

  def self.begin
    seed = Seed.new
    seed.generate_cats
    seed.generate_dogs
  end

  def generate_cats
    20.times do |i|
      name =
      cat = Cat.create!(
        name: Faker::Cat.name,
        breed: Faker::Cat.breed,
        age: Faker::Number.between(1, 15)
      )
      puts "Cat #{i}: The name of this cat is #{cat.name} he/she is a '#{cat.breed}' and is '{#{cat.age}}' years old."
    end
  end

  def generate_dogs
    20.times do |i|
      name =
      dog = Dog.create!(
        name: Faker::GameOfThrones.character,
        breed: Faker::Pokemon.name,
        age: Faker::Number.between(1, 15)
      )
      puts "Dog #{i}: The name of this dog is #{dog.name} he/she is a '#{dog.breed}' and is '#{dog.age}' years old."
    end
  end
end

Seed.begin
