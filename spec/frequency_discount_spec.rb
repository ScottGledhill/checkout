require 'frequency_discount'


describe FrequencyDiscount do
  subject(:frequency) {described_class.new(2, "Lavender heart", 0.75)}

  it 'can calculate discount if frequency needed is met' do
    expect(frequency.discount(["Lavender heart", "Lavender heart", "Personalised cufflinks"], ("Lavender heart"))).to eq 1.5
    expect(frequency.discount(["Lavender heart", "Lavender heart", "Lavender heart" ], ("Lavender heart"))).to eq 2.25
  end

  it 'doesnt calculate discount if under amount of items needed' do
    expect(frequency.discount(["Lavender heart"], ("Lavender heart"))).to eq nil
  end
end
