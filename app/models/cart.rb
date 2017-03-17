class Cart < ActiveRecord::Base
  belongs_to :dish
  belongs_to :user

  validates :count_item, presence: true, numericality: true
  validates_numericality_of :count_item, :greater_than => 0, :message => "должен быть больше 0"
  
end
