class Piggybank

  def initialize
    @coins = []
  end

  def put_coins_in(coin)
    @coins << coin
  end

  def shake
    #needs to know if there's a coin inside
    if !@coins.empty?
      'cling!'
    end
  end

  def break
    @coins.length
  end

  def balance
    @coins.each {|coin| print coin}
  end
  #remove any code used for debugging before submitting
    #a. it's not a user story
    #b. you can't actually see inside a piggybank

end
