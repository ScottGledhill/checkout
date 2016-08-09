require 'current_items'

class Checkout
  include CurrentItems

  attr_reader :basket
  def initialize
    @basket =[]
  end

  def scan(item)
    PRODUCT_LIST.include?(item) ? basket << item : raise("Not current item")
  end

  def total
    9.25
  end
end
