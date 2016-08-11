require 'checkout'

describe Checkout do
  subject(:checkout) {described_class.new(PercentageDiscount.new(60,10), FrequencyDiscount.new(2,"Lavender hearts", 0.75))}
  it 'can scan items and change total' do
    checkout.scan("Lavender heart")
    checkout.scan("Personalised cufflinks")
    expect(checkout.total("Lavender heart")).to eq 54.25
  end

  it 'can add items to basket after scan' do
    checkout.scan("Lavender heart")
    expect(checkout.basket).to eq([{:code=>1, :name=>"Lavender heart", :price=>9.25}])
  end

  it 'raises error if incorrect item scanned' do
    expect{checkout.scan("item")}.to raise_error "Not current item"
  end
end

#
# write freq test
# write perc test
