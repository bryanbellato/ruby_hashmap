require_relative 'Node'

class HashMap
    def initialize(load_factor = 0.75, capacity = 16)
        @load_factor = load_factor
        @capacity = capacity
        @size = 0
        @buckets = Array.new(capacity)
    end

    def hash(key)
        key = key.to_s
        hash_code = 0
        prime_number = 31
        key.each_char { |char| hash_code = prime_number * hash_code + char.ord }
        hash_code % @capacity
    end

    def resize
        new_capacity = @capacity * 2
        new_buckets = Array.new(new_capacity)

        @buckets.each do |bucket|
            current = bucket
            while current != nil
                index = hash(current.key) % new_capacity
                new_node = Node.new(current.key, current.value, new_buckets[index])
                new_buckets[index] = new_node
                current = current.next
            end
        end

        @buckets = new_buckets
        @capacity = new_capacity
    end

    def set(key, value)
        if (@size + 1).to_f / @capacity > @load_factor
            resize
        end

        index = hash(key) % @capacity
        new_node = Node.new(key, value)

        if @buckets[index] == nil
            @buckets[index] = new_node
            @size += 1
            return
        end

        current = @buckets[index]
        while current != nil
            if current.key == key
                current.value = value
                return
            end
            if current.next == nil
                break
            end
            current = current.next
        end

        current.next = new_node
        @size += 1
    end

    def get(key)
        index = hash(key) % @capacity
        current = @buckets[index]
        while current != nil
            if current.key == key
                return current.value
            end
            current = current.next
        end

        return nil
    end

    def remove(key)
        index = hash(key) % @capacity
        current = @buckets[index]

        if current == nil
            return
        end

        if current.key == key
            @buckets[index] = current.next
            @size -= 1
            return
        end

        while current.next != nil
            if current.next.key == key
                current.next = current.next.next
                @size -= 1
                return
            end
            current = current.next
        end
    end

    def has(key)
        return get(key) != nil
    end
end
