require 'checkout'
require 'frequency_discount'
require 'percentage_discount'

describe Checkout do
  subject(:checkout) {described_class.new(PercentageDiscount.new(60,10), FrequencyDiscount.new(2,"Lavender heart", 0.75))}
   it 'can total basket including freq discount' do
    checkout.scan("Lavender heart")
    checkout.scan("Lavender heart")
    expect(checkout.checkout("Lavender heart")).to eq 17
  end
end
