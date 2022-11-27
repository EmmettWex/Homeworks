class Map
    
    def initialize
        @map = []
    end

    def set(key, value)
        if @map.empty? || @map.none? { |sub_m| sub_m[0] == key }
            @map.push([key, value])
            #only accepts push, pop, shift, unshift, don't use '<<'
        else
            @map.each { |sub_m| sub_m = [key, value] if sub_m[0] == key }
        end
    end

    def get(key)
        @map.each { |pair| pair[1] if pair[0] == key }
    end

    def delete(key)
        @map.reject { |pair| pair if pair[0] == key }
    end

    def show
        @map
    end

end