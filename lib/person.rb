require 'atm.rb'
require 'account.rb'
require 'pry'

class Person

    attr_accessor :name, :cash, :account, :dep_amount, :atm

    def initialize(attrs = {})
      @name = set_name(attrs[:name])
      @cash = 0
      @account = nil
    end
    
    def set_name(name)
      name == nil ? missing_name : name 
    end

    def missing_name
      raise "A name is required"
    end
    
    def create_account
      @account = Account.new(owner: self)
    end

    def deposit(dep_amount)
      @account == nil ? no_account : perform_deposit(dep_amount)
    end

    def withdraw(args = {})
      @account == nil ? no_account : perform_withdraw(args)
    end

  private

    def perform_deposit(dep_amount)
      @cash -= dep_amount
      @account.balance += dep_amount
    end 
   
    def perform_withdraw(args)
      atm = args[:atm]
      account = args[:account]
      amount = args[:amount]
      pin = args[:pin]
      @cash += args[:amount]
    end

    def no_account
      raise 'No account present'
    end
end
