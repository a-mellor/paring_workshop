class Computer
  attr_writer :rand_seed

  COMPUTER_GUESSES = %w{rock paper scissors}
 
  def hand
    srand (@rand_seed || random_number)
    COMPUTER_GUESSES.sample
  end

  private 

  def random_number
    rand 2342343
  end
end
