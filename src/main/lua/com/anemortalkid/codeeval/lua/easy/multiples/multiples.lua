
-- returns a table with words and length of table
-- words are split by pattern
local function split(str, pattern)
  local str_len = string.len(str)
  local index = 1
  local s = str
  local words = {}
  local word_count = 0
  while index ~= nil and index <= str_len do
    index = string.find(s,pattern,1,true)
    if (index == nil) then
      table.insert(words,s)
      word_count = word_count + 1
      return words,word_count
    end
    word = string.sub(s,1,index-1)
    table.insert(words,word)
    index = index+1
    s = string.sub(s,index,-1)
    word_count = word_count + 1
  end
  return words,word_count
end

-- returns the size of the table
local function table_size(t)
  local count = 0
  for k,v in ipairs(t) do
    count = count + 1
  end
  return count
end

-- prints a table, each element delimited by a separator
-- the last element will not be terminated with a separator
local function print_table(t,separator)
  local size = table_size(t)
  for i=1,size do
    io.write(t[i])
    if(i < size) then
      io.write(separator)
    end
  end
end

local function main()
   for line in io.lines(arg[1]) do
    local values,value_count = split(line,",")
    local x = tonumber(values[1])
    local n = tonumber(values[2])
    
     for i=0,n*x do
      if(i*n >= x)  then
        print(n*i)
        break
      end      
     end
     
    end
  
end

main()