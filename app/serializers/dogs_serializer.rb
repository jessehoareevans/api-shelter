class DogsSerializer < ActiveModel::Serializer
  attributes :id, :name, :breed, :age
end
