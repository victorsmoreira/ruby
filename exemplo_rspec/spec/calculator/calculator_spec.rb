require 'calculator'

describe Calculator, 'Sobre a calculadora:' do

    context "#div" do
        it "divide by 0" do
            expect{subject.div(3,0)}.to raise_error(ZeroDivisionError) #usar {} para interpretar o valor
            expect{subject.div(3,0)}.to raise_error('divided by 0')
            expect{subject.div(3,0)}.to raise_error(ZeroDivisionError, 'divided by 0')
            expect{subject.div(3,0)}.to raise_error(/divided/)
        end
        
    end
    

    context '#sum' do
        it 'with positive numbers' do
            result = subject.sum(5, 7)
            expect(result).to eql (12)
        end

        it 'with negative numbers' do
            result = subject.sum(-5, -7)
            expect(result).to eql (-12)
        end

        it 'with integer numbers' do
            result = subject.sum(-5, 7)
            expect(result).to eql (2)
        end
    end
end