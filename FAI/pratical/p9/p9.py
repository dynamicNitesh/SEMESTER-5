import numpy as np

arr=np.array([1,2,3])

print(arr) #[1 2 3]

# Trigonometric Functions

#sin
print(np.sin(arr)) #[0.84147098 0.90929743 0.14112001]

#cos
print(np.cos(arr)) #[ 0.54030231 -0.41614684 -0.9899925 ]

#tan
print(np.tan(arr)) #[ 1.55740772 -2.18503986 -0.14254654]


# Arithmetic Functions

# add
print(np.add(5,5)) # 10

#subtract
print(np.subtract(10,5)) # 5

#Multiplication
print(np.multiply(10,5)) # 150

# divide
print(np.divide(50,5)) # 10.0


# Rounding Functions

array1 = np.array([1.23456, 2.34567, 3.45678, 4.56789])

# round
print(np.round(array1)) #[1. 2. 3. 5.]

# floor
print(np.floor(array1)) #[1. 2. 3. 4.]

# ceil
print(np.ceil(array1)) #[2. 3. 4. 5.]