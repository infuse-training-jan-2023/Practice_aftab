class Skip_sport:
    def __init__(self,arr):
        self.arr = arr
    def skip_sports(self, skip_num):
        try:
            if skip_num >= len(self.arr):
                return "index out of bound"
            return [f"{i}:{self.arr[i]}" for i in range(skip_num, len(self.arr))]
        except TypeError:
            return "input should only be number"
print(Skip_sport(["basketball","football","tennis","volleyball","gaming"]).skip_sports(2))
