require 'minitest/autorun'
require_relative 'task1'

class Task1Test < Minitest::Test
  def setup
    @task1 = Task1.new
  end
  def test_stroke
    stroke = Stroke.new
    assert_equal 0, stroke.count
    stroke.brush_on
    assert_equal 1, stroke.count
    stroke.brush_off
    assert_equal 1, stroke.count
    stroke.brush_on
    assert_equal 2, stroke.count
  end

  def test_solution_1
    arr = [5, 8]
    assert_equal 8, @task1.solution(arr)
  end

  def test_solution_2
    arr = [1, 1, 1, 1]
    assert_equal 1, @task1.solution(arr)
  end

  def test_solution_3
    arr = [1, 3, 2, 1, 2, 1, 5, 3, 3, 4, 2]
    assert_equal 9, @task1.solution(arr)
  end
end