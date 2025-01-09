class Node
    attr_reader :key, :value
    attr_accessor :next
    
    def initialize(key, value, next_node = nil)
        @key = key
        @value = value
        @next = next_node
    end
end
