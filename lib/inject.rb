class Array

  def my_inject n = nil, &block
      mem = self.shift
      self.each  do |item|
        mem = yield mem, item
      end
      if n != nil
        n + mem
          elsif n == nil
          mem
      end
  end

end