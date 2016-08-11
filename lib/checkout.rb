require 'current_items'

class Checkout
  include CurrentItems
  attr_reader :basket, :percentage_discount, :total

  def initialize(percentage_discount = PercentageDiscount.new)
    @percentage_discount = percentage_discount
    @basket =[]
  end

  def scan(item)
    PRODUCT_LIST.include?(item) ? basket << PRODUCT_LIST[item] : raise("Not current item")
  end

  def check_percentage_discount(total)
    @percentage_discount.discount(total)
  end

  def total
    @total = basket.map { |item| item[:price] }.inject(0) {|a,b| a + b}
    check_percentage_discount(@total)
  end
end
