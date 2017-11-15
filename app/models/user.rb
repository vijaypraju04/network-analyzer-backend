class User < ApplicationRecord
  has_many :links
  has_many :targets, through: :links
end
