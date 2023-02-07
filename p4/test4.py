from p4 import CountSubarrays
import p4
from data import data

class TestSubArrays:
    def test_sub_arrays_equals(self):
        k= -93
        assert CountSubarrays().count_subarrays(data,k)==1023
    def test_sub_arrays_wrong_input(self):
        assert isinstance(CountSubarrays().count_subarrays(data,'k'),Exception)
    def test_sub_arrays_check_instance(self):
        obj = CountSubarrays()
        assert isinstance(obj,CountSubarrays)

