require './lib/atm.rb'

describe ATM do
    it 'has $1000 on initiliaze' do 
    expect(subject.funds).to eq 1000
    end

    it 'funds are reduced at withdraw' do
        subject.withdraw 50
        expect(subject.funds).to eq 950
    end

    it 'prints a receipt'
end

describe ATM do
    let(:account) { instance_double('Account') }
  
    before do
      # Before each test we need to add an attribute of `balance`
      # to the `account` object and set the value to `100`
      allow(account).to receive(:balance).and_return(100)
      # We also need to allow `account` to receive the new balance
      # using the setter method `balance=`
      allow(account).to receive(:balance=)
      
    end
    
    it 'allow withdraw if the account has enough balance.' do
      # We need to tell the spec what to look for as the response
      # and store that in a variable called `expected_outcome`.
      # Please note that we are omitting the `bills` part at the moment,
      # We will modify this test and add that later.
  
      expected_output = { status: true, message: 'success', date: Date.today, amount: 45 }
  
      # We need to pass in two arguments to the `withdraw` method.
      # The amount of money we want to withdraw AND the `account` object.
      # The reason we pass in the `account` object is that the Atm needs
      # to be able to access information about the `accounts` balance
      # to be able to clear the transaction.
      expect(subject.withdraw(45, account)).to eq expected_output
    end
  end