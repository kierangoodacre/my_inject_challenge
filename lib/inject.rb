class Array

  def my_inject(&block)
    if &block = 

    mem = self.shift
    self.each  do |item|
      mem = yield mem, item
    end
    mem
  end


end