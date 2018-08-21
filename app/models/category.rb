class Category < ApplicationRecord
  has_many :assets, :priorities
end
