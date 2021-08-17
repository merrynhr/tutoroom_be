class Tutor < ApplicationRecord
  
  # delegate :email, :email=, to: :user


  after_initialize :set_defaults

  def set_defaults
    self.image_url ||= "avatardefault_92824.png"
  end

  belongs_to :user



end
