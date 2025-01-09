class HashMap

    def initialize(load_factor = 0.75, capacity = 16)
        @load_factor = load_factor
        @capacity = capacity
    end

    def hash(key)
        hash_code = 0
        prime_number = 31
           
        key.each_char { |char| hash_code = prime_number * hash_code + char.ord }
           
        hash_code
      end
    end