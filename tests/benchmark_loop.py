#python3
import time

iter = 0
start = time.time()
while iter%128 != 0 or (time.time()-start)<1:
  iter+=1
print(iter + " iterations")
