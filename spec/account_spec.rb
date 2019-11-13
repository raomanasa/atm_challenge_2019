require './lib/account.rb'

describe Account do
  


    it 'check the lenght of the number' do
        number = 1234
        number_lengh = Math.log10(number).to_i+1
        expect(number_lengh).to eq 4
    end

    it 'is expected to have ian expiry dato on initialize' do
        expected_date = Date.today.next_year(5).strftime("%m/%y")
        expect(subject.exp_date).to eq expected_date
    end

end