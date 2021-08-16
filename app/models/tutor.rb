class Tutor < ApplicationRecord
  
  validates :image_url, attachment_presence: true
  has_attached_file :image_url, default_url: "avatardefault_92824.png"

  belongs_to :user



end
