class TutorSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :image_url, :slug, :bio

  # has_many :reviews
end
