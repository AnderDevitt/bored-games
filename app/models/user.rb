class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :games
  has_one :address # One address can have many users, but one user can only have one address
  # has_many :users
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
