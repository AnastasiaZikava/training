class Graph

  def connected?
    x = vmax
    k = [x]
    l = [x]

    for i in 0..@max
     l << i if self[x,i]==l
    end

    while !k.empty?
     y = k.shift
     
     self.each_edge do |a,b|
      if a == y || b == y
       z = a == y ? b : a
       if !l.include? z
        l << z
        k << z
       end
      end
     end
    end

    if l.size < @max
     false
    else
     true
    end 
  end
end

mygraph = Graph.new([0,1], [1,2], [2,3], [3,0], [1,3])

puts mygraph.connected?  
puts mygraph.euler_path? 

mygraph.remove 1,2
mygraph.remove 0,3
mygraph.remove 1,3

puts mygraph.connected?
puts mygraph.euler_path?