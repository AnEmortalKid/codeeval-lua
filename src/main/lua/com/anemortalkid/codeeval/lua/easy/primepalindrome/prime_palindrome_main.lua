-- Prime Palindromes Code Eval challenge

-- determines whether the given number is prime or not
local function isPrime(n)
  for i=2,n+1 do
    if(math.fmod(n,i) == 0 and i ~= n) then
      return false
    end
  end
    return true
end

-- returns the number of primes from 2 to max
local function getPrimes(max)
  primes = {}
  
  for i = 2, max do
    if( isPrime(i)) then
      table.insert(primes,i)
    end
  end
  
  return primes
end

-- reverses a table
local function reverseTable(t)
  local reverseT = {}
  local itemCount = #t
    for k,v in ipairs(t) do
      reverseT[itemCount+1-k] = v
    end
  return reverseT
end

-- reverses a number
local function reverse(n)
  local reversed = 0
  local input = n
    while input ~= 0 do
    	reversed = reversed*10 + math.fmod(input,10)
    	input = math.floor(input /10)
    end
  return reversed
end

-- finds palindrome prime
local function findPalindromePrime(n)
  local array = reverseTable(getPrimes(n))
    for k,v in ipairs(array) do
      if ( v == reverse(v)) then
        return v
      end
    end
    return 2
end

local function main()
  io.write(findPalindromePrime(1000))
end

main()
