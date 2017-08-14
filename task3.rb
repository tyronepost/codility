
class Task3
  def solution(s, t)
    expand1 = expand(s)
    expand2 = expand(t)
    compare(expand1, expand2)
  end

  def expand(s)
    arr = []
    s_array = s.chars.to_a
    i = 0
    while i < s_array.length
      if integer?(s_array[i])
        i, num = get_full_integer(i, s_array)
        (1..num).each { arr << "?" }
      else
        arr << s_array[i]
        i += 1
      end
    end
    arr.join
  end

  def get_full_integer(i, s_array)
    number_array = []
    while (i < s_array.length) && integer?(s_array[i])
      number_array << s_array[i]
      i += 1
    end
    num = number_array.join.to_i
    return i, num
  end

  def integer?(str)
    str.to_i.to_s == str
  end

  def compare(expand1, expand2)
    unless expand1.length == expand2.length
      return false
    end
    array1 = expand1.chars.to_a
    array2 = expand2.chars.to_a
    (0..(array1.length - 1)).each do |index|
      unless array1[index] == array2[index] || array1[index] == "?" || array2[index] == "?"
        return false
      end
    end
    return true
  end
end