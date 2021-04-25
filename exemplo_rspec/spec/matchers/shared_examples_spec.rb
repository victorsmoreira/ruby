require 'pessoa'

shared_examples 'status' do |sentimento|
    it "#{sentimento}" do
        pessoa.send("#{sentimento}!")
        expect(pessoa.status).to eq("Sentindo-se #{sentimento.capitalize}!") 
    end
end

describe "Pessoa" do
    subject(:pessoa) {Pessoa.new}

    include_examples 'status', :feliz
    it_behaves_like 'status', :triste
    it_should_behave_like 'status', :nervoso

    # it "feliz!" do
    #     pessoa.feliz!
    #     expect(pessoa.status).to eq("Sentindo-se Feliz!") 
    # end
    
    # it "triste!" do
    #     pessoa.triste!
    #     expect(pessoa.status).to eq("Sentindo-se Triste!") 
    # end
    
    # it "nervoso!" do
    #     pessoa.nervoso!
    #     expect(pessoa.status).to eq("Sentindo-se Nervoso!") 
    # end
    
end
