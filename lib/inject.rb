class Array

  def my_inject n = nil, block= nil
    copy = self.dup
    mem = (n.is_a? Fixnum)? n : copy.shift
    copy.each {|item| mem = mem.send(block, item)}  if (block.is_a? Symbol) && (n.is_a? Integer)
    copy.each {|item| mem = mem.send(n, item)}      if (n.is_a? Symbol) 
    copy.each {|item| mem = yield mem, item}        if (n.is_a? Fixnum) && !block
    copy.each {|item| mem = yield mem, item}        unless n
    mem
  end

end
