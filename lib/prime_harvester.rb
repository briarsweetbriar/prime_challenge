class PrimeHarvester

  attr_accessor :cap, :primes, :current_number
  def initialize(cap)
    @cap = cap
    @primes = []
    @current_number = 2
  end

  def gather
    while primes.length < cap do
      find_next_prime
    end
    return primes
  end

  private
  def find_next_prime
    primes << current_number if current_number_is_prime?
    self.current_number += 1
  end

  def current_number_is_prime?
    primes.each do |prime|
      return false if current_number % prime == 0
    end
    return true
  end
end