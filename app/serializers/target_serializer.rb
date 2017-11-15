class TargetSerializer < ActiveModel::Serializer
  attributes :name, :category
  has_many :users
  has_many :links
end
