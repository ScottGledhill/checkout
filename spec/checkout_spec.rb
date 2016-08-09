require 'checkout'

describe Checkout do
  subject(:checkout) {described_class.new}
  it 'can scan items and change total' do
    checkout.scan("Lavender heart")
    expect(checkout.total).to eq 9.25
  end

  it 'can add items to basket after scan' do
    checkout.scan("Lavender heart")
    expect(checkout.basket).to eq(["Lavender heart"])
  end

  it 'raises error if incorrect item scanned' do
    expect{checkout.scan("item")}.to raise_error "Not current item"
  end
end
