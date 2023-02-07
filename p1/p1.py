expression = "002-10.00-00.00"
class ExtractExpression:

    def __init__(self,exp):
        self.exp = exp

    def extract(self):
        try:
            arr = self.exp.split('-')
            total = (float(arr[1])+float(arr[2]))
            average = total/2
            result = arr[0]+"-"+str("%.2f" % average )
            return result
        except Exception as e:
            return e
test = ExtractExpression(4)
print(test.extract())
