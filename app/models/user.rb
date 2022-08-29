class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable :rememberable, :validatable
           :recoverable :rememberable, :validatable
  has_many :vehicles dependent: :delete_all
end
