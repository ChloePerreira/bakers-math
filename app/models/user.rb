class User < ActiveRecord::Base
  has_many :recipes
  validates :email, presence: true
  validates :display, presence: true
  validates :password, presence: true
end
