class CatsSerializer < ActiveModel::Serializer
  attributes :id, :name, :breed, :age
end
