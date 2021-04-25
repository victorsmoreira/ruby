describe "Classes" do
    it "to be_instance_of - exatamente a classe" do
        expect(10).to be_instance_of(Integer)
    end
    
    it "to be_kind_of / be_a / be_an- pode ser herança" do
        expect('Victor').to be_kind_of(String)
    end
    
    it "respond_t0" do
        expect('Victor').to respond_to(:size)        
    end
    
end
