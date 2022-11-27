class Map
    
    def initialize
        @map = []
    end

    def set(key, value)
        if @map.empty? || @map.none? { |sub_m| sub_m[0] == key }
            @map << [key, value]
        else
            @map.each { |sub_m| sub_m = [key, value] if sub_m[0] == key }
        end
    end

    def get(key)
        @map.select { |pair| pair if pair[0] == key }
    end

    def delete(key)
        @map.reject { |pair| pair if pair[0] == key }
    end

end