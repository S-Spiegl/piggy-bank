require 'piggy_bank'

describe Piggybank do

  it 'can put coins in the piggy bank' do
  #expectation: that we can put money in

  #Arrange, act, assert
    #Arrange - what instances, classes etc. do you need to carry out the test
    #Act - what code do you need to run
    #Assert - comparing expected behaviour with actual behaviour

    #Arrange - we'll need an instance of piggybank
    # rather than writing piggybank = Piggybank.new just write subject - creates a new instance of piggybank within
    #this method ... if you refer to it within the method it will remember any methods that have been
    # run on it (e.g. put coins in), but next method it's a clean slate, new instance of piggybank,
    # unaffected by any methods until you append something
    # subject
    coin = '50p'
    #Act
    subject.put_coins_in(coin)
    #Assert
    expect {subject.put_coins_in(coin)}.not_to raise_error
  end
  # it 'clinks when you shake it if not empty' do
  #   piggybank = Piggybank.new
  #   piggybank.shake
  #   expect {piggybank.shake}.not_to raise_error
  # end
  it 'clinks when you shake it if not empty' do
    piggybank = Piggybank.new
    coin = '50p'
    piggybank.put_coins_in(coin)
    piggybank.shake
    expect(piggybank.shake).to eq 'cling!'
    #why parentheses rather than curly brackets???? Didn't get answer
  end
  it 'break the bank and return the number of coins that it contains' do
    #Act
    piggybank = Piggybank.new
    #Arrange
    piggybank.put_coins_in('50p')
    piggybank.put_coins_in('20p')
    piggybank.put_coins_in('5p')
    #Assert
    piggybank.break
    #Assert
    expect(piggybank.break).to eq 3
  end
end
