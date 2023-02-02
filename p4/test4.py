from p4 import Count_subarrays
import p4
from data import data

class Test_sub_arrays:
    def test_sub_arrays_equals(self):
        k= -93
        assert Count_subarrays().count_subarrays(data,k)==1023
    def test_sub_arrays_wrong_input(self):
        assert Count_subarrays().count_subarrays(data,'k')=="wrong input"
    def test_sub_arrays_check_instance(self):
        obj = Count_subarrays()
        assert isinstance(obj,p4.Count_subarrays)

