require 'pessoa'

describe "Atributos" do

    # before(:each) do
    #     puts '>> ANTES de cada teste'
    #     @pessoa = Pessoa.new
    # end

    # after(:each) do
    #     puts '>> DEPOIS de cada teste'
    # end

    around(:each) do |teste|
        puts '>> ANTES de cada teste'
        @pessoa = Pessoa.new

        teste.run # roda o teste

        puts ">> DEPOIS de cada teste #{@pessoa.inspect}"
    end

    it "have_attributes" do
        @pessoa.nome = 'Victor'
        @pessoa.idade = 30
        expect(@pessoa).to have_attributes(nome:'Victor', idade:30)
    end

    it "have_attributes" do
        @pessoa.nome = 'Viviane'
        @pessoa.idade = 25
        expect(@pessoa).to have_attributes(nome: start_with('V'), idade:(a_value <= 30))
    end
end
