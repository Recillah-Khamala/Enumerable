module MyEnumerable
  def all?
    result = []
    @list.each do |element|
      result.push(element) if yield element
    end
      result.length == @list.length
  end

  def any?
    @list.each do |element|
      if yield element
        return true
      end
    end


  def filter
    result = []
    @list.each do |element|
      result.push(element) if yield element
    end
  end
  