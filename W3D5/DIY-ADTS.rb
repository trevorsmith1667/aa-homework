class Stack
    attr_reader :stack
    def initialize
     @stack = []
    end

    def push(el)
      self << el
    end

    def pop
     self.pop
    end

    def peek
      self.last 
    end
  end


class Queue 
    attr_reader :queue
    def initialize 
        @queue = []
    end 

    def enqueue(el)
        self.shift(el)
    end 

    def dequeue
        self.pop 
    end 

    def peek
      self.first
    end
end 

class Map
    attr_reader :map
    def initialize 
        @map = []
    end 

    def set(key, value)
        idx = map.index {|pair| pair[0] == key}
        if idx 
        map[idx][1] = value
        else 
            map << [key, value]
        end 
        value 
    end 

    def get(key)
        map.each {|pair| return pair[1] if pair[0] == key}
    end 

    def delete(key)
    end 

    def show
    end 

end 
