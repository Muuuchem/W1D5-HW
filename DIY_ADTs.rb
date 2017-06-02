class Stack
    def initialize(arr)
      @stack = arr
    end

    def add(el)
      @stack.push(el)
    end

    def remove
      @stack.pop
    end

    def show
      @stack
    end
  end

class Queue

  def initialize(arr)
    @queue = arr
  end

  def enqueue(el)
    @queue << el
  end

  def dequeue
    @queue.shift
  end

  def show
    @queue
  end

end

class Map
  def initialize(arr)
    @map = arr
  end

  def assign(key, value)
    @map << [key, value] unless @map.any? {|pair| pair[0] == key}
  end

  def lookup(key)
    @map.each_with_index {|pair, idx| return idx if pair.first == key }
  end

  def remove(key)
    @map.each_with_index {|pair, idx| @map.delete_at(idx) if key == pair.first }
  end

  def show
    @map
  end
end
