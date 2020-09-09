class OrderDetail < ApplicationRecord
    belongs_to :order
belongs_to :book
validates :soluong, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validate :book_present
  validate :order_present

  before_save :finalize
end
