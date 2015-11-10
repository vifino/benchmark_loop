iter = 0
start = Time.now
while iter%128 != 0 or (Time.now()-start) < 1.0 do
	iter+=1
end
puts "#{iter} iterations"
