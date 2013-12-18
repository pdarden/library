class Categorization < ActiveRecord::Base
  validates_numericality_of :book_id, :only_integer => true
  validates_numericality_of :category_id, :only_integer => true
  belongs_to :book,
    inverse_of: :categorizations
  belongs_to :category,
    inverse_of: :categorizations
end
