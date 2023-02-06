class Problem2:
    def __init__(self,arr):
        self.arr = arr

    def element_at(self, index):
        try:
            return self.arr[index]
        except Exception as e :
            return e

    def inclusive_range(self, start_pos, end_pos):
        try:
            new_arr = []
            for i in range(start_pos, end_pos + 1):
                new_arr.append(self.arr[i])
            return new_arr
        except Exception as e :
            return e

    def non_inclusive_range(self, start_pos, end_pos):
        try:
            new_arr = []
            for i in range(start_pos, end_pos):
                new_arr.append(self.arr[i])
            return new_arr
        except Exception as e :
            return e

    def start_and_length(self, start_pos, length):
        try:
            new_arr = []
            for i in range(start_pos, start_pos + length):
                new_arr.append(self.arr[i])
            return new_arr
        except Exception as e :
            return e

test  = Problem2([1,2,3,4])
print(test.inclusive_range(0,3))

