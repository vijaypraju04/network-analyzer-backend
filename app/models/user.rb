class User < ApplicationRecord
  has_many :links
  has_many :targets, through: :links

  def link_params=(arg)
    links.build(arg)
  end

  def target_params=(arg)
    targets.build(arg)
  end

end
