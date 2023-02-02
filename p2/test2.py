from p2 import Problem2

class Test2:
    def test_element_at_equals(self):
        assert Problem2([1,2,3,4]).element_at(0)==1
    def test_element_at_index_bigger_len_arr(self):
        assert Problem2([1,2,3,4]).element_at(6)=="index out of bounds"
    def test_element_at_invalid_args(self):
        assert Problem2([1,2,3,4]).element_at('5')=="inputs should only be integers"
    def test_inclusive_range_equals(self):
        assert Problem2([1,2,3,4]).inclusive_range(0,2)==[1,2,3]
    def test_inclusive_index_bigger_len_arr(self):
        assert Problem2([1,2,3,4]).inclusive_range(0,8)=="index out of bounds"
    def test_inclusive_range_invalid_args(self):
        assert Problem2([1,2,3,4]).inclusive_range('4',"f")=="inputs should only be integers"
    def test_none_inclusive_range_equals(self):
        assert Problem2([1,2,3,4]).non_inclusive_range(0,2)==[1,2]
    def test_none_inclusive_index_bigger_len_arr(self):
        assert Problem2([1,2,3,4]).non_inclusive_range(0,8)=="index out of bounds"
    def test_none_inclusive_invalid_args(self):
        assert Problem2([1,2,3,4]).non_inclusive_range('5','f')=="inputs should only be integers"
    def test_start_and_length_equals(self):
        assert Problem2([1,2,3,4]).start_and_length(0,2)==[1,2]
    def test_start_and_length_index_bigger_len_arr(self):
        assert Problem2([1,2,3,4]).start_and_length(0,8)=="index out of bounds"
    def test_start_and_length_invalid_args(self):
        assert Problem2([1,2,3,4]).start_and_length('5','f')=="inputs should only be integers"


