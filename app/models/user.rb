class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :assets, :margin_calls, :priorities

  devise :database_authenticatable, :timeoutable,
         :recoverable, :rememberable, :validatable
end
