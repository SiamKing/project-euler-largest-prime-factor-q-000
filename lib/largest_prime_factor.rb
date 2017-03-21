def largest_prime_factor(input)
  max = (Math.sqrt(input)).floor
  range = (2..max).to_a.reverse.delete_if {|num| num.even?}
  for i in range
    if input % i == 0
      if isPrime?(i)
        return i
      end
    end
  end
end

def isPrime?(n)
  max = Math.sqrt(n)
  return false if n == 1
  for i in 2..max
    if n % i == 0
      return false
    end
  end
  return true if n > 1
end
