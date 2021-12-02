print("running simple_script.py")

# lets make some changes!

# Fibonacci function
def fibo(i,j):
    if i < 50:
        print('hello')
    return j,i+j

	
# fibbonacci numbers up to 500
i = 0
j = 1
while (j < 500):
	print(i)
	i,j = fibo(i,j)
