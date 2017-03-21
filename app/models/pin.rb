class Pin < ApplicationRecord
  validates :image, presence: true
  validates :description, presence: true
  do_not_validate_attachment_file_type :image

  belongs_to :user
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
end
