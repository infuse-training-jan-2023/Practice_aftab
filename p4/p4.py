

class Count_subarrays:
    def __init__(self):
        pass

    def count_subarrays(self,arr, k):
        try:
            count = 0
            n = len(arr)
            sum_dic = {0: 1}
            current_sum = 0
            for i in range(n):
                current_sum += arr[i]
                if current_sum - k in sum_dic:
                    count += sum_dic[current_sum - k]
                if current_sum in sum_dic:
                    sum_dic[current_sum] += 1
                else:
                    sum_dic[current_sum] = 1
            return count
        except TypeError:
            return "wrong input"

# print(count_subarrays(data,-93))
