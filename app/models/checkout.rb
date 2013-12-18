class Checkout < ActiveRecord::Base
  validates_numericality_of :book_id, :only_integer => true
  validates_numericality_of :member_id, :only_integer => true
  belongs_to :book,
    inverse_of: :checkouts
end
