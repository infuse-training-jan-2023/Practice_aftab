require_relative 'p.rb'
require "test/unit"
class Testing < Test::Unit::TestCase
    def test_problem2_NE
        array = [1,2,3,4,5]
        # element at
        assert_not_equal(2,element_at(array,0))
    end
    def test_problem2_E
        array = [1,2,3,4,5]
        assert_equal(1,element_at(array,0))
    end
end
