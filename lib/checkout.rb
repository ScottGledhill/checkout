require 'current_items'

class Checkout
  include CurrentItems
  attr_reader :basket, :percentage_discount, :freq_discount, :current_total

  def initialize(percentage_discount = PercentageDiscount.new, freq_discount = FrequencyDiscount.new)
    @percentage_discount = percentage_discount
    @freq_discount = freq_discount
    @basket =[]
  end

  def scan(item)
    PRODUCT_LIST.include?(item) ? basket << PRODUCT_LIST[item] : raise("Not current item")
  end

  def check_percentage_discount(current_total)
    percentage_discount.discount(current_total)
  end

  def check_frequency_discount(basket, freq_discount_item, current_total)
    freq_discount.discount(@basket, freq_discount_item, current_total)
  end

  def total(freq_discount_item)
    @current_total = basket.map { |item| item[:price] }.inject(0) {|a,b| a + b}
    @current_total = check_percentage_discount(@current_total)
    check_frequency_discount(@basket, freq_discount_item, @current_total)
  end
end
