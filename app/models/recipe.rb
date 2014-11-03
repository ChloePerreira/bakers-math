class Recipe < ActiveRecord::Base
  has_many :lines
  has_many :ingredients, through: :lines
  validates :title, presence: true
end
