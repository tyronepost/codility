require 'minitest/autorun'
require_relative 'task2'

class Task2Test < Minitest::Test
  def test_tree
    a = build_example
    assert a
    assert_equal 4, a.x
  end

  def test_task1
    a = build_example
    assert_equal 2, Task2.solution(a)
  end

  private
  def build_example
    g = Tree.new
    g.x = 5

    d = Tree.new
    d.x = 4
    d.l = g

    b = Tree.new
    b.x = 5
    b.l = d

    e = Tree.new
    e.x = 1

    f = Tree.new
    f.x = 6

    c = Tree.new
    c.x = 6
    c.l = e
    c.r = f

    a = Tree.new
    a.x = 4
    a.l = b
    a.r = c

    a
  end
end