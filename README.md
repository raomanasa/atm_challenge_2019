# ATM Challenge

### The code

##### A person needs to withdraw money from his account with a ATM machine.
The code are simulationg an ATM machine. This includes a person, an account, and the simulation of the ATM machine.


### Dependencies

* [Ruby](https://www.ruby-lang.org/en/) - A dynamic, open source programming language with a focus on simplicity and productivity. We have used ruby version 2.3.7.
* [RSpec](https://rspec.info/)- for testing our code (TDD). We have used RSpec version 3.9:
  - rspec-core 3.9.0
  - rspec-expectations 3.9.0
  - rspec-mocks 3.9.0
  - rspec-support 3.9.0


### Setup

For this to run you will need to:
- Open Terminal app
- Type: irb

---


### Instructions


##### In the gems irb ( or pry ), type the following to load the program:

```
Load “lib/person.rb”
```

##### To set the stage we need to create a person and an ATM:

```
atm = ATM.new
user1 = Person.new(name: “user1")
user1.create_account
```

##### Now your user is read to use the functionality of the ATM:

```
user1.deposit(amount)
user1.withdraw(amount: “123”, atm: atm)
```

---

### Acknowledgements


For creating this we have used:

* [VS Code](https://code.visualstudio.com/) - Visual Studio Code is a code editor redefined and optimized for building and debugging modern web and cloud applications. 

* [Ruby](https://www.ruby-lang.org/en/) - A dynamic, open source programming language with a focus on simplicity and productivity. We have used ruby version 2.3.7.

* [GitHub](https://github.com/) - GitHub is an American company that provides hosting for software development version control using Git. (Owned by Microsoft)


##### We have also used this sites to gather information:

* [Stackoverflow](https://stackoverflow.com/) 
* [Relish](https://relishapp.com/) 
* [Ruby Gems](https://rspec.info/)



### Updates/Improvements plans

Improvements that we are thinking about:

- More bills with diffrent values
- Amount balance sent via email/sms
- Security notifications


### License

Licenced under MIT

[MIT information](https://en.wikipedia.org/wiki/MIT_License)

