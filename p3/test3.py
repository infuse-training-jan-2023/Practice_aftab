from p3 import SkipSport

class Test_SkipSport:
    def test_Skip_sports_equals(self):
        obj = SkipSport(["basketball","football","tennis","volleyball","gaming"]).skip_sports(2)
        assert obj == ['2:tennis', '3:volleyball', '4:gaming']
    def test_Skip_sports_num_bigger_len_arr(self):
        obj = SkipSport(["basketball","football","tennis","volleyball","gaming"]).skip_sports(10)
        assert isinstance(obj,Exception)
    def test_Skip_sports_invalid_args(self):
        obj = SkipSport(["basketball","football","tennis","volleyball","gaming"]).skip_sports('10')
        assert isinstance(obj,Exception)




