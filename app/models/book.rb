class Book < ActiveRecord::Base
  validates_presence_of :title
  validates_presence_of :author
  validates_numericality_of :rating, :only_integer => true, :greater_than_or_equal_to => 0, :less_than_or_equal_to => 100, :allow_blank => true
  has_many :checkouts,
    inverse_of: :book
  has_many :categories,
    inverse_of: :book
  has_many :categorizations,
    inverse_of: :book
end
