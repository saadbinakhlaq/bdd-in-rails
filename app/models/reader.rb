class Reader < ActiveRecord::Base
  attr_accessor :password, :password_confirmation

  validates :email, presence: true
  validates :email, email: true
  validates :email, uniqueness: true
  validates :password, confirmation: true
  validates :password, presence: true
end
