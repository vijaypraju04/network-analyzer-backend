class Link < ApplicationRecord
  belongs_to :user
  belongs_to :target

  def user_params=(arg)
    build_user(arg)
  end

  def target_params=(arg)
    build_target(arg)
  end

end
