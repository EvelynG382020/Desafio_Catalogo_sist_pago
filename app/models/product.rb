class Product < ApplicationRecord
  has_many_attached :images
  has_many :physicals
  has_many :digitals
  belongs_to :category, polymorphic: true
end
