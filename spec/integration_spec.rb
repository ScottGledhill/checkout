require 'checkout'
require 'frequency_discount'
require 'percentage_discount'

describe Checkout do
  subject(:checkout) {described_class.new(PercentageDiscount.new(60,10), FrequencyDiscount.new(2,"Lavender heart", 0.75))}
   it 'can total basket including freq discount' do
    checkout.scan("Lavender heart")
    checkout.scan("Lavender heart")
    expect(checkout.total("Lavender heart")).to eq 17
  end

  it 'can total basket including percentage_discount' do
    checkout.scan("Lavender heart")
    checkout.scan("Kids T-shirt")
    checkout.scan("Personalised cufflinks")
    checkout.scan("Personalised cufflinks")
    expect(checkout.total("Lavender heart")).to eq 107.28
  end

  it 'can total basket including both discounts' do
    checkout.scan("Lavender heart")
    checkout.scan("Lavender heart")
    checkout.scan("Personalised cufflinks")
    checkout.scan("Personalised cufflinks")
    expect(checkout.total("Lavender heart")).to eq 96.15
  end
end
