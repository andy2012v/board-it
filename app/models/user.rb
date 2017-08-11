class User < ApplicationRecord

  validates :username, presence: true
  validates :email, presence: true, format: { with: /@/ }

  has_many :exercises

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
