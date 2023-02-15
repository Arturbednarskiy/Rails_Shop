class CartProduct < ApplicationRecord
  belongs_to :cart
  belongs_to :product

  scope :ordered, -> { order(position: :desc) }

  def total_price
    quantity * product.price
  end
end
