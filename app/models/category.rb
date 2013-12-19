class Category < ActiveRecord::Base
  validates_presence_of :name
  validates_uniqueness_of :name
  has_many :books,
    inverse_of: :category
  has_many :categorizations,
    inverse_of: :category
end
