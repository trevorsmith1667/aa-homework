class Stack
    attr_reader :ivar
    def initialize
     @ivar = []
    end

    def push(el)
      self << el
    end

    def pop
     ivar.pop
    end

    def peek
      ivar.last 
    end
  end


class Queue 
    attr_reader :ivar
    def initialize 
        @ivar = []
    end 

    def enqueue(el)
        ivar.shift(el)
    end 

    def dequeue
        ivar.pop 
    end 

    def peek
      ivar.first
    end
end 

class Map
    attr_reader :ivar
    def initialize 
        @ivar = []
    end 

    def set(key, value)
        idx = map.index {|pair| pair[0] == key}
        if idx 
        map[idx][1] = value
        else 
            ivar << [key, value]
        end 
        value 
    end 

    def get(key)
        ivar.each {|pair| return pair[1] if pair[0] == key}
    end 

    def delete(key)
    end 

    def show
    end 

end 
