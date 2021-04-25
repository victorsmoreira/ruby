describe 'Matchers de igualdade' do
    it '#equal ou #be - testa se o objeto é igual' do
        x = 'ruby'
        y = 'ruby'
        expect(x).not_to equal(y)
        expect(x).to equal(x)
    end

    it '#eql - testa se o conteúdo é igual' do
        x = 'ruby'
        y = 'ruby'
        expect(x).to eql(y)
    end

end