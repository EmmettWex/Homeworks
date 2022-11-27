class GraphNode

    attr_accessor :val, :neighbors

    def initialize(val)
        @val = val
        @neighbors = []
    end

    def bfs(starting_node, target_value)
        queue = [starting_node]
        visited = []

        until queue.empty?
            ele = queue.shift
            
            return nil if visited.include?(ele) || visited.length == neighbors.length
            visited << ele

            if ele == target_value
                return ele
            else
                ele.neighbors.each { |child| queue << child }
            end
        end
    end
end

a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]