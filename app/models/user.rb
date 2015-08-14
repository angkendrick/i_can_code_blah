class User < ActiveRecord::Base

  has_secure_password

  has_many :reviews
  has_many :likes

  mount_uploader :avatar, AvatarUploader

  validates :username, presence: true, uniqueness: true, format: { with: /\A[\w]+\z/}
  validates :email, uniqueness: true, format: {with: /[\w]+[@]{1}[\w]+[\.]{1}[A-z]{2,}/}
  validates_presence_of :password, :on => :create
  validates_confirmation_of :password, :allow_blank => true
  validates_length_of :password, :within => 6..40, :allow_blank => true

end
