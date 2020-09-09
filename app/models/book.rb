class Book < ApplicationRecord
    has_many :order_details
    has_many :images
end
