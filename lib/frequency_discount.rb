require 'current_items'

class FrequencyDiscount
  attr_reader :frequency_needed, :item, :discount

  def initialize(frequency_needed, item, discount)
    @frequency_needed = frequency_needed
    @item = item
    @discount = discount
  end

  def apply_discount?(basket, discount_item)
    item_count(basket, discount_item) >= frequency_needed
  end

  def item_count(basket, discount_item)
    basket.count(discount_item)
  end

  def discount(basket, discount_item)
    if apply_discount?(basket, discount_item)
      item_count(basket, discount_item) * @discount
    end
  end
end
