require 'minitest/autorun'
require_relative 'task3'

class Task3Test < Minitest::Test
  def setup
    @task3 = Task3.new
  end

  def test_task3
    assert @task3.solution("A2Le", "2pL1")
    assert !@task3.solution("ba1", "1Ad")
  end

  def test_expand
    expected = "A??Le"
    assert_equal expected, @task3.expand("A2Le")

    expected = "??pL?"
    assert_equal expected, @task3.expand("2pL1")

    expected = "a??????????"
    assert_equal expected, @task3.expand("a10")
  end

  def test_compare
    assert @task3.compare("A??Le", "??pL?")
  end
end