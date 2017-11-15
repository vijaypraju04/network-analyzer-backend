class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :bio, :photo, :contact
  has_many :targets
  has_many :links
end
