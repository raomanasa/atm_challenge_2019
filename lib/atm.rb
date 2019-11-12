class ATM
    
    attr_accessor :funds
    def initialize
        @funds = 1000
    end

    def withdraw(amount, account)
        # We will be using Ruby's `case`- `when` - `then` flow control statement
        # and check if there are enough funds in the account
        case
        when amount > account.balance
          # we exit the method if the amount we want to withdraw is 
          # bigger than the balance on the account
          return
        else
          # If it's not, we perform the transaction
          # We DEDUCT the amount from the Atm's funds
          @funds -= amount
          # We also DEDUCT the amount from the accounts balance
          account.balance = account.balance - amount
          # and we return a response for a successful withdraw.
          { status: true, message: 'success', date: Date.today, amount: amount }
        end
      end

end

