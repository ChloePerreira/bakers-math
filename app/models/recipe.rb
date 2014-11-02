class Recipe < ActiveRecord::Base
  has_many :lines
  has_many :ingredients, through: :lines
end
