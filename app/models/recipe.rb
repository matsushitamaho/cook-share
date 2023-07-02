class Recipe < ApplicationRecord
  validates :name, presence: true
  validates :time, presence: true
  validates :material, presence: true
  validates :make, presence: true
end
