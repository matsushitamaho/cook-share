class Recipe < ApplicationRecord
  has_one_attached :image
  has_many :favorites,      dependent: :destroy
  has_many :favorited_customers, through: :favorites, source: :customer
  has_many :post_comments,  dependent: :destroy
  has_many :recipe_tags,    dependent: :destroy
  has_many :tags,           through: :recipe_tags
  
  validates :name,     presence: true
  validates :time,     presence: true
  validates :material, presence: true
  validates :make,     presence: true
  validates :tag_ids, presence: true
  
  def favorited_by?(customer)
    if customer.present?
      favorites.where(customer_id: customer.id).exists?
    else
      false
    end
  end
  
  def get_image
    unless image.attached?
      file_path = Rails.root.join('app/assets/images/no_image.jpg')
      image.attach(io: File.open(file_path), filename: 'default-image.jpg', content_type: 'image/jpeg')
    end
    image
  end
end
