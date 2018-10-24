# A class that uses the Sieve of Eratosthenes to find all
# the primes from 2 up to a given number.
class Sieve
  def initialize(range_value)
    @range_value = range_value
    @sorting_hsh = create_range_hsh
  end

  def create_range_hsh
    (2..@range_value).to_a.each_with_object({}) do |val, hsh|
      hsh[val] = :not_yet_validated
    end
  end

  def prime?(number)
    return true if number == 2 && mark_as_prime(number)

    number.downto(2).each do |num|
      next if num == number
      return false if (number % num).zero?
    end
    mark_as_prime(number)
  end

  def mark_as_prime(number)
    @sorting_hsh[number] = :prime
    true
  end

  def mark_multiples_as_non_prime(prime_number)
    2.upto(@range_value) do |range_num|
      key = (prime_number * range_num)
      @sorting_hsh[key] = :not_prime if @sorting_hsh.key?(key)
    end
  end

  def primes
    @sorting_hsh.each_key do |key|
      mark_multiples_as_non_prime(key) if prime?(key)
    end
    return_prime_values
  end

  def return_prime_values
    primes = []
    @sorting_hsh.each_pair do |k, v|
      primes << k if v == :prime
    end
    primes
  end
end
