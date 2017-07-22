class Cat < ApplicationRecord
  validates :name, presence: true
  validates :breed, presence: true
  validates :age, presence: true

  def self.search(name)
   Cat.where('lower(name) = ?', name.downcase)
  end

  def self.random
    Cat.order('RANDOM()').first
  end
end
