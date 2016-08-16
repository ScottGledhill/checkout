require 'frequency_discount'


describe FrequencyDiscount do
  subject(:frequency) {described_class.new(2, "Lavender heart", 0.75)}

  it 'can calculate discount if frequency needed is met' do
    expect(frequency.discount(["Lavender heart", "Lavender heart", "Personalised cufflinks"], ("Lavender heart"), 50)).to eq 48.5
    expect(frequency.discount(["Lavender heart", "Lavender heart", "Lavender heart" ], ("Lavender heart"), 50)).to eq 47.75
  end

  it 'doesnt calculate discount if under amount of items needed' do
    expect(frequency.discount(["Lavender heart"], ("Lavender heart"), 100)).to eq 100
  end
end
