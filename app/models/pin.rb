class Pin < ActiveRecord::Base
  belongs_to :user
  
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  
  validates :image, presence: true
  validates :description, presence: true
  validates :description, length: { minimum: 2 }
end
