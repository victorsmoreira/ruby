class Carro
attr_accessor :nome

    def ligar
        puts 'o carro está pronto para iniciar o trajeto'
    end
end

civic = Carro.new

civic.nome = 'Civic'
puts civic.nome
puts civic.class
civic.ligar