describe 'Matchers de comparação' do

    it '>' do
        expect(5).to be > 1
    end
    it '>=' do
        expect(5).to be >= 1
    end
    it '<' do
        expect(5).to be < 10
    end
    it '<=' do
        expect(5).to be <= 10
    end

    it 'be_between inclusive' do
        expect(2).to be_between(2,7).inclusive
        expect(5).to be_between(2,7).inclusive
        expect(7).to be_between(2,7).inclusive
    end
    # it 'be_between inclusive / falhas agregadas', :aggregate_failures do
    #     expect(5).to be_between(2,7).inclusive
    #     expect(1).to be_between(2,7).inclusive
    #     expect(8).to be_between(2,7).inclusive
    # end

    it 'be_between' do
        expect(5).not_to be_between(1,5).exclusive
    end

    it 'match' do
        expect('victor@moreira.com.br').to match(/..@../)
    end

    it 'start_with' do
        expect('Victor').to start_with('V')
        expect([1,2,3]).to start_with(1)
    end
end