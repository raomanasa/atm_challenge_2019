require './lib/atm.rb'

describe ATM do
    it 'has $1000 on initiliaze' do 
    expect(subject.funds).to eq 1000
    end
end

