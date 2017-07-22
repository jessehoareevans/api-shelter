class Dog < ApplicationRecord
  validates :name, presence: true
  validates :breed, presence: true
  validates :age, presence: true

  def self.search(breed)
   Dog.where('lower(breed) = ?', breed.downcase)
  end
end
