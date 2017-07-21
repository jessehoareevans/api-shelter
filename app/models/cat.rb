class Cat < ApplicationRecord
  validates :name, presence: true
  validates :breed, presence: true
  validates :age, presence: true
end
