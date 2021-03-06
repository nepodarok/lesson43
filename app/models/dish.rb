class Dish < ActiveRecord::Base
  belongs_to :shop
  has_many :carts
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  validates :shop_id, presence: true

end
