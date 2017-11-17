class User < ApplicationRecord
  has_many :links
  has_many :targets, through: :links

  # def target_params=(arg)
  #
  #   link_params = arg[:link_params]
  #   target_info = arg.slice(:name)
  #   byebug
  #   targets.build(target_info)
  #   links.build(link_params)
  #
  #
  # end
  #
  # def dog=(val)
  #   self.name = val
  # end

end
