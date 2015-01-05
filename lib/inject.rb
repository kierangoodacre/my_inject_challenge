class Array

  def my_inject n = nil, *block
      copy = self.dup
      if ((block[0].is_a? Symbol) && (n.is_a? Integer)) 
        mem = n
        block1 = block[0].to_proc
        copy.each do |item|
          mem = block1.call(mem, item)
        end
      elsif n.is_a? Integer
        mem = n
        copy.each do |item|
          mem = yield mem, item
        end
      elsif block[0].is_a? Symbol
        mem = copy.shift
        n1 = n.to_proc
        copy.each do |item|
          mem = n1.call(mem, item)
        end
      else mem = copy.shift
            copy.each  do |item|
            mem = yield mem, item
          end
      end
      mem
  end

end