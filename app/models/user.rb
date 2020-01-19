class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,:confirmable,
         :recoverable, :rememberable, :validatable
         
         
  acts_as_follower
  acts_as_followable
         validates :name, presence: true
         validates :password_confirmation, presence: true
         validates :email, presence: true
         validates :remember_me, presence: true
end
