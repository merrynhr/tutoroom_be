class TutorSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :image_url, :bio, :subject, :email, :user_id

end
