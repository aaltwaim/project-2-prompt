class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  belongs_to :collectible
  belongs_to :auction
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

end
