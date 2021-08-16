class Tutor < ApplicationRecord
  
  # before_create :slugify

  # def slugify
  #   self.slug = name.parameterize
  # end

  belongs_to :user



end
