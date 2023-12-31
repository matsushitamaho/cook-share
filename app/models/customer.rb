class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  has_many :favorites,     dependent: :destroy
  has_many :favorited_recipes, through: :favorites, source: :recipe
  has_many :post_comments, dependent: :destroy
         
  def active_for_authentication?
    super && (is_deleted == false)
  end
end
