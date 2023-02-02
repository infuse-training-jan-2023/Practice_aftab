import p1

class Test_p1:
    def test_equals(self):
        assert p1.Extract_expression('112-10.00-20.00').extract() =='112-15.00'
    def test_class_instance(self):
        assert p1.Extract_expression('112-10.00-20.00').extract() != None
    def test_second_zero(self):
        assert p1.Extract_expression('112-10.00-00.00').extract()=='112-5.00'
    def test_is_instance_of(self):
        obj = p1.Extract_expression('')
        assert isinstance(obj,p1.Extract_expression)
    def test_wrong_input(self):
        obj = p1.Extract_expression('')
        assert p1.Extract_expression('112-10.00-f0.00').extract()=='cannot take average of not a number'
