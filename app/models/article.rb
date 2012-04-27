class Article < ActiveRecord::Base
  has_one :category
  
  validates :title, :content, :presence => true
  
  scope :alphabetical, order('title')
  scope :active, where('active = ?', true)
  
end
