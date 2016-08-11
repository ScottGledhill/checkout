require 'current_items'

class FrequencyDiscount
  attr_reader :frequency_needed, :item

  def initialize(frequency_needed, item)
    @frequency_needed = frequency_needed
    @item = item
  end

  def apply_discount?(basket, discount_item)
    basket.count(discount_item) >= frequency_needed
  end
end
