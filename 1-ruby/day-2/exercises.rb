# 1. Print the contents of an array of 16 numbers, four numbers at a time, using just each.
array = (1..16).to_a

(0..3).each do |i|
    x = (i * 3) + i
    p array[x..(x + 3)]
end

# 2. Now do the same with each_slice in Enumerable.
array.each_slice(4) { |slice| p slice }

# 3. Modify the Tree class to accept a hash for initialization
class Tree
    attr_accessor :children, :node_name

    def initialize(hash)
        @children = []
        @node_name = hash.keys.first
        hash[hash.keys.first].each { |k,v| @children.push(Tree.new(k => v))}
    end

    def visit_all(&block)
        visit &block
        children.each {|c| c.visit_all &block}
    end

    def visit(&block)
        block.call self
    end
  end


ruby_tree = Tree.new( 'grandpa' => {'father' => {'child1' => {}, 'child2' => {}}, 'uncle' => {'child3' => {}}})

puts "Visiting a node"
ruby_tree.visit {|node| puts node.node_name}
puts

puts "visiting entire tree"
ruby_tree.visit_all {|node| puts node.node_name}

# Create a grep that will print lines of a file where that
# line contains instances of a phrase

def grep(filename, phrase)
    File.open(filename) do |lines|
        lines.each do |line|
            puts "#{lines.lineno}. #{line}" if line =~ Regexp.new(phrase)
        end
    end
end

grep('exercises.rb', 'do')