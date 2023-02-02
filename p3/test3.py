from p3 import Skip_sport

class Test_skip_sport:
    def test_skip_sports_equals(self):
        obj = Skip_sport(["basketball","football","tennis","volleyball","gaming"]).skip_sports(2)
        assert obj == ['2:tennis', '3:volleyball', '4:gaming']
    def test_skip_sports_skip_num_bigger_len_arr(self):
        obj = Skip_sport(["basketball","football","tennis","volleyball","gaming"]).skip_sports(10)
        assert obj == "index out of bound"
    def test_skip_sports_invalid_args(self):
        obj = Skip_sport(["basketball","football","tennis","volleyball","gaming"]).skip_sports('10')
        assert obj == "input should only be number"




