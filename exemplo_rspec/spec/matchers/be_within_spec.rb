describe "be_within" do
    it { expect(12.5).to be_within(0.5).of(12) } 
    it { expect([11.9,11.6,12.4]).to all (be_within(0.5).of(12)) } 
end

# delta 0.5
# referencia 12