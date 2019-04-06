class Catagory < ApplicationRecord
  has_many :plans
  has_many :photos
  default_scope -> {order('id asc')}
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
