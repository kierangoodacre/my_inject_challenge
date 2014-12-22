class Array

  def my_inject n = nil, s = nil, &block
      mem = self.shift
      self.each  do |item|
        mem = yield mem, item
      end
      if n != nil && s == nil
        n + mem
          elsif n == nil && s != nil
          mem = self.shift
          self.each{|mem, item| mem + item}
        end
        else
          mem
      end
  end

end