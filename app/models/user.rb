class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
    has_many :comments
    has_many :books
    has_many :clubs, through: :books

    has_secure_password

    validates :name, :username, presence: true
    validates :username, uniqueness: true
end
