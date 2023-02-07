require_relative 'p.rb'
require "test/unit"
class Testing < Test::Unit::TestCase
    def test_array_element_at_negative
        array = [1,2,3,4,5]
        obj = Array.new
        assert_not_equal(2,obj.element_at(array,0))
    end
    def test_array_element_at
        array = [1,2,3,4,5]
        obj = Array.new
        assert_equal(1,obj.element_at(array,0))
    end
    def test_array_inclusive_range_negative
        array = [1,2,3,4,5]
        obj = Array.new
        assert_not_equal([2],obj.inclusive_range(array,0,2))
    end
    def test_array_inclusive_range
        array = [1,2,3,4,5]
        obj = Array.new
        assert_equal([1,2,3],obj.inclusive_range(array,0,2))
    end
end
