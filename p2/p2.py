class Problem2:
    def __init__(self,arr):
        self.arr = arr

    def element_at(self, index):
        try:
            if index >= len(self.arr):
                return "index out of bounds"
            else:
                return self.arr[index]
        except TypeError:
            return "inputs should only be integers"

    def inclusive_range(self, start_pos, end_pos):
        try:
            new_arr = []
            if end_pos >= len(self.arr) or start_pos >= len(self.arr):
                return "index out of bounds"
            else:
                for i in range(start_pos, end_pos + 1):
                    new_arr.append(self.arr[i])
                return new_arr
        except TypeError:
            return "inputs should only be integers"

    def non_inclusive_range(self, start_pos, end_pos):
        try:
            new_arr = []
            if end_pos >= len(self.arr):
                return "index out of bounds"
            else:
                for i in range(start_pos, end_pos):
                    new_arr.append(self.arr[i])
            return new_arr
        except TypeError:
            return "inputs should only be integers"

    def start_and_length(self, start_pos, length):
        try:
            new_arr = []
            if length > len(self.arr) - start_pos:
                return "index out of bounds"
            else:
                for i in range(start_pos, start_pos + length):
                    new_arr.append(self.arr[i])
                return new_arr
        except TypeError:
            return "inputs should only be integers"

test  = Problem2([1,2,3,4])
print(test.inclusive_range(0,3))

