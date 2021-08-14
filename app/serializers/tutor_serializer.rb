class TutorSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :image_url, :bio, :subject, :email

end
