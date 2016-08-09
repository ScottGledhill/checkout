require 'checkout'

describe Checkout do
  subject(:checkout) {described_class.new}
  it 'can scan items and change total' do
    checkout.scan("Lavender heart", (9.25))
    expect(checkout.total).to eq 9.25
  end

  it 'can add items to basket after scan' do
    checkout.scan("Lavender heart", (9.25))
    expect(checkout.basket).to include(["Lavender heart", (9.25)])
  end

  it 'only put current items when scanned into basket' do
    checkout.scan("Lavender heart", (9.25))
    checkout.scan("Not current item", (12129.25))
    expect(checkout.basket).to eq(["Lavender heart", (9.25)])
  end
end
