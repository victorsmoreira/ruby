describe (1..5), 'Ranges' do
    it "#cover" do
        is_expected.to cover(2,5)
        expect(subject).to cover(2,5)
        expect(subject).not_to cover(-1,8) 
    end 
   
    it { is_expected.to cover(2) } 
    it { is_expected.to cover(2,5) } 
    it { expect(subject).not_to cover(0,6) } 
end
