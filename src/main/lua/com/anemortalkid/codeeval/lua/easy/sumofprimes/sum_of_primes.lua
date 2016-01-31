-- determines whether the given number is prime or not
local function isPrime(n)

  if(math.fmod(n,2) == 0 and n~=2) then
    return false
  end

  for i=2,math.floor(n/2) do
    if(math.fmod(n,i) == 0 and i ~= n) then
      return false
    end
  end
  return true
end

-- gets the desired number of primes
local function getNPrimes(n)

  local values = {}
  local index = 0
  local number = 2
  while index ~= n do
    if(isPrime(number)) then
      table.insert(values,number)
      index = index + 1
    end
    number = number + 1
  end

  return values
end

local function allInOne()
  local sum = 0
  local number = 2
  local count = 0
  while count ~= 1000 do
    if(isPrime(number)) then
      sum = sum + number
      count = count + 1
    end
    number = number + 1
  end
  return sum
end

local function main()
  local primes = getNPrimes(1000)
  local sum = 0
  for k,v in ipairs(primes) do
    sum = sum + v
  end
  print(sum)
  print(allInOne())
end

main()
