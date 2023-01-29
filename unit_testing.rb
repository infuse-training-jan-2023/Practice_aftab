require "./problem1.rb"
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
end
