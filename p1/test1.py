import p1
import unittest

class Test(unittest.TestCase):
    def test_equals(self):
        self.assertEqual(p1.ExtractExpression('112-10.00-20.00').extract(),'112-15.00')

    def test_class_instance(self):
        obj = p1.ExtractExpression('112-10.00-20.00')
        self.assertEqual(isinstance(obj,p1.ExtractExpression),True)

    def test_second_zero(self):
        self.assertEqual(p1.ExtractExpression('112-10.00-00.00').extract(),'112-5.00')

    def test_is_instance_of(self):
        obj = p1.ExtractExpression('')
        self.assertEqual(isinstance(obj,p1.ExtractExpression),True)

    def test_wrong_input_type_number(self):
        obj = p1.ExtractExpression(5)
        self.assertEqual(isinstance(obj.extract(),Exception),True)

    def test_wrong_input_type_string_empty(self):
        obj = p1.ExtractExpression('').extract()
        self.assertEqual(isinstance(obj,Exception),True)

    def test_wrong_input_invalid_string(self):
        obj = p1.ExtractExpression('112-10.ff-00.00').extract()
        self.assertEqual( isinstance(obj,Exception),True)
