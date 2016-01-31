-- retrieves the 3 values from the given string
function extract_vals(str)
  first = string.find(str," ",1, true)
  second = string.find(str," ", first+1, true)
  firstNo = string.sub(str,1,first-1)
  secondNo=string.sub(str,first+1,second-1)
  thirdNo=string.sub(str,second+1)
  return {firstNo,secondNo,thirdNo}
end

local function main()
  for line in io.lines(arg[1]) do
    local values = extract_vals(line)
    local x = values[1]
    local y = values[2]
    local n = values[3]
    for i = 1,n do
      if(math.fmod(i,x) == 0) then
        io.write("F")
      end
      if(math.fmod(i,y) == 0) then
        io.write("B")
      end
      if(math.fmod(i,x) ~= 0 and math.fmod(i,y) ~= 0) then
        io.write(i)
      end
      if(i < tonumber(n)) then
        io.write(" ")
      end
    end
      print()
  end
end



main()
