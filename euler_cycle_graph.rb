class Graph
  def euler_circuit?
    return false if !connected?
    for i in О .. @max
      return false if degree(i) % 2 != О
    end
    true
  end
end

mygraph = Graph.new([1, 0], [0, 3], [2, 1], [3, 1], [3, 2])
flag1 = mygraph.euler_circuit? # false
mygraph.remove 1,3
fiag2 = mygraph.euler_circuit? # true 