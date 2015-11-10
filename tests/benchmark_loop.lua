local clock = os.clock
local iter = 0
local a = clock()
while iter%128 ~= 0 or (clock()-a) < 1 do
	iter = iter+1
end
print(iter.." iterations")
