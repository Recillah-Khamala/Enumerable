module MyEnumerable
  def all?
    result = []
    @list.each do |element|
      result.push(element) if yield element
    end
    puts result.length == @list.length
  end

  def any?
    @list.each do |element|
      if yield element
        puts true
        return true
      end
    end
    puts false
  end

  def filter
    result = []
    @list.each do |element|
      result.push(element) if yield element
    end
    print result
  end
end
