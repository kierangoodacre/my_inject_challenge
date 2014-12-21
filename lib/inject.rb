class Array

  def my_inject n = nil, &block
      mem = self.shift
      self.each  do |item|
        if n
        mem = yield mem, item
        n + mem
          else
          mem = yield mem, item
        end
      end
    mem
  end

end