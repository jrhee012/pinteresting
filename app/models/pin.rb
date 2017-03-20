class Pin < ApplicationRecord
  validates :image, presence: true
  validates :description, presence: true
  
  belongs_to :user
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
end
