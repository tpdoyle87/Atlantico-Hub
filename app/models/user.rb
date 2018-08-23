class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :assets
  has_many :margin_calls
  has_many :priorities

  devise :database_authenticatable, :timeoutable, :registerable,
         :recoverable, :rememberable, :validatable
end
