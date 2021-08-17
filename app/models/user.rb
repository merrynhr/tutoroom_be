class User < ApplicationRecord

  has_one :tutor#, dependent: :destory
  after_create :init_tutor
  # accepts_nested_attributes_for :tutor
  # delegate :email, :email=, to: :tutor

  def init_tutor
    self.create_tutor
  end

  def generate_jwt
    JWT.encode({ id: id,
                exp: 60.days.from_now.to_i },
               Rails.application.secrets.secret_key_base)
  end
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

        # validates :fullname uniqueness: { case_sensitive: false }, presence: true  #, allow_blank: false, format: { with: /\A[a-zA-Z0-9]+\z/ }
end
