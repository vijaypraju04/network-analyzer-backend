class LinkSerializer < ActiveModel::Serializer
  attributes :id, :kind
  belongs_to :target
  belongs_to :user
end
