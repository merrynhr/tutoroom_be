class Tutor < ApplicationRecord
  
  # delegate :email, :email=, to: :user


  after_initialize :set_defaults

  def set_defaults
    self.image_url ||= "https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png"
    self.bio ||= ""
  end

  belongs_to :user



end
