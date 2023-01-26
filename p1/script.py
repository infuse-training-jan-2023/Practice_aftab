import numpy as np 
import os

last_name = input("Enter your last name: ")
array = np.array([1,2,3,4])
first_name = os.getenv('name')
print(first_name+last_name)
print(array)