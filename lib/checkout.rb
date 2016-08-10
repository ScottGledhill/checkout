require 'current_items'

class Checkout
  include CurrentItems
  attr_reader :basket

  def initialize
    @basket =[]
  end

  def scan(item)
    PRODUCT_LIST.include?(item) ? basket << PRODUCT_LIST[item] : raise("Not current item")
  end

  def total
    basket.map { |item| item[:price] }.inject(0) {|a,b| a + b}
  end
end
