class Address < ApplicationRecord
  belongs_to :user # One address can have many users, but one user can only have one address
  has_many :users
end
