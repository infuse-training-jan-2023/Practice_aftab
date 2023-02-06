class SkipSport:
    def __init__(self,arr):
        self.arr = arr
    def skip_sports(self, skip_num):
        try:
            if skip_num >= len(self.arr):
                raise Exception
            return [f"{i}:{self.arr[i]}" for i in range(skip_num, len(self.arr))]
        except Exception as e:
            return e
print(SkipSport(["basketball","football","tennis","volleyball","gaming"]).skip_sports(2))
