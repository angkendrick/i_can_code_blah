class User < ActiveRecord::Base

  has_secure_password

  has_many :reviews

  mount_uploader :avatar, AvatarUploader

  validates :username, presence: true, uniqueness: true, format: { with: /\A[\w]+\z/}
  validates :email, uniqueness: true, format: {with: /[\w]+[@]{1}[\w]+[\.]{1}[A-z]{2,}/}
  validates :password, length: { minimum: 6 } 

end
