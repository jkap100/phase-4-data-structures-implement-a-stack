# your code here


class Stack
    
    def initialize(limit = nil)
        @stack = []
        @limit = limit
    end

    def push(val)
        raise 'Stack Overflow' if full?
        @stack.push(val)
    end

    def full?
        @limit && @stack.size == @limit
    end

    def pop
        @stack.pop
    end

    def peek
        @stack.last
    end

    def size
        @stack.size
    end

    def empty?
        @stack.empty?
    end

    def search(val)
        @stack.each_with_index do |item, idx|
            return size - idx - 1 if item == val
        end
        -1
    end
end