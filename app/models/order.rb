class Order < ApplicationRecord
    belongs_to :custom
    has_many :order_details
end
