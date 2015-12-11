class Computator

  def solve(a_string)
    nums = extract_numbers(a_string)
    operations = a_string.scan(/\D/)

    res = nums.shift
    while nums.count > 0
      res = res.send(operations.shift, nums.shift)
    end
    
    res
  end

  private
  def extract_numbers(a_string)
    nums = a_string.scan(/\d*/)
    nums.delete('')
    nums.map{|n| n.to_i}
  end

end
