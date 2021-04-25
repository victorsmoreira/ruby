require 'pessoa'

describe "Atributos" do

    let(:pessoa) { Pessoa.new } 

    it "have_attributes" do
        pessoa.nome = 'Victor'
        pessoa.idade = 30
        expect(pessoa).to have_attributes(nome:'Victor', idade:30)
    end

    it "have_attributes" do
        pessoa.nome = 'Viviane'
        pessoa.idade = 25
        expect(pessoa).to have_attributes(nome: start_with('V'), idade:(a_value <= 30))
    end
end
