class Recipe < ApplicationRecord
  has_one_attached :image
  has_many :favorites, dependent: :destroy
  
  validates :name,     presence: true
  validates :time,     presence: true
  validates :material, presence: true
  validates :make,     presence: true
  
  def favorited_by?(customer)
    favorites.where(customer_id: customer.id).exists?
  end
  
  def get_image
    unless image.attached?
      file_path = Rails.root.join('app/assets/images/no_image.jpg')
      image.attach(io: File.open(file_path), filename: 'default-image.jpg', content_type: 'image/jpeg')
    end
    image
  end
end
