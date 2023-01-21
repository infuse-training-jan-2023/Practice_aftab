require_relative "C:\\Users\\Aftab\\Desktop\\ruby\\date-16-exercise\\problem1.rb"
require_relative "C:\\Users\\Aftab\\Desktop\\ruby\\date-16-exercise\\problem2.rb"
require_relative "C:\\Users\\Aftab\\Desktop\\ruby\\date-16-exercise\\problem3.rb"
require_relative "C:\\Users\\Aftab\\Desktop\\ruby\\date-16-exercise\\problem4.rb"
require_relative "C:\\Users\\Aftab\\Desktop\\ruby\\date-16-exercise\\problem5.rb"
require_relative "C:\\Users\\Aftab\\Desktop\\ruby\\date-16-exercise\\problem6.rb"
require "test/unit"
require 'json'

class Testing < Test::Unit::TestCase
  # problem 1
  def test_problem1_NE
    serial_no = "099-15.00-90.00"
    extracted = "099-52.50"
    assert_not_equal("099-15.0",extract(serial_no))
  end
  def test_problem1_E
    serial_no = "099-15.00-90.00"
    extracted = "099-52.50"
    assert_equal(extracted,extract(serial_no))
  end
  def test_problem1_E2
    assert_equal(15.00,take_average(10.00,20.00))
  end
  def test_problem1_NN
    serial_no = "099-15.00-90.00"
    assert_not_nil(extract(serial_no))
  end

# problem 2
  def test_problem2_NE
    array = [1,2,3,4,5]
    index = 3
    length = 3
    # element at
    assert_not_equal(2,element_at(array,0))
  end
  def test_problem2_E
    array = [1,2,3,4,5]
    assert_equal(1,element_at(array,0))
  end
  def test_problem2_NN
    array = [1,2,3,4,5]
    assert_not_nil(element_at(array,3))
  end
  # inclusive range
  def test_problem2_IR_E
    array = [1,2,3,4,5]
    assert_equal([1,2,3],inclusive_range(array,0,2))
  end
  def test_problem2_IR_NE
    array = [1,2,3,4,5]
    assert_not_equal([1,2,3],inclusive_range(array,0,7))
  end
   # non_inclusive_range
  def test_problem2_NIR_NE
    array = [1,2,3,4,5]
    assert_not_equal([1,2,3,4],non_inclusive_range(array,0,3))
  end
    # start_and_length
  def test_problem2f_SL_E
    array = [1,2,3,4,5]
    assert_equal([1,2],start_and_length(array,0,2))
  end


  # problem3
  def test_problem3
    hash = {513121 => 100,10 =>200,"hello" => 23}
    assert_equal({513121 => 100}, remove_keys(hash))
  end

  # problem4
  def test_problem4_NE
    array = ["basketball","football","tennis","volleyball","gaming"]
    assert_not_equal(["1:football","2:tennis","3:volleyball","4:gaming"],skip_sports(array,2))

  end
  def test_problem4_E
    array = ["basketball","football","tennis","volleyball","gaming"]
    assert_equal(["2:tennis","3:volleyball","4:gaming"],skip_sports(array,2))
  end

  # problem5
  def test_problem5_NN
    date_path = "C:\\Users\\Aftab\\Desktop\\ruby\\date-16-exercise\\data.json"
    assert_not_nil(read_json("C:\\Users\\Aftab\\Desktop\\ruby\\date-16-exercise\\data.json"))
  end
  
# problem6
  def test_problem6_NN
  file = "date-16-exercise\\file.txt"
  assert_not_nil(encode(file))
  end
end
