require 'frequency_discount'


describe FrequencyDiscount do
  subject(:frequency) {described_class.new(2, "Lavender heart", 0.75)}

  it 'can calculate discount if frequency needed is met' do
    expect(frequency.discount([{:code=>1, :name=>"Lavender heart", :price=>9.25}, {:code=>1, :name=>"Lavender heart", :price=>9.25}, { code: 002, name: "Personalised cufflinks", price: 45.0}], ("Lavender heart"), 50)).to eq 48.5
  end

  it 'doesnt calculate discount if under amount of items needed' do
    expect(frequency.discount([{:code=>1, :name=>"Lavender heart", :price=>9.25}, { code: 003, name: "Kids T-shirt", price: 19.95}], ("Lavender heart"), 100)).to eq 100
  end
end
