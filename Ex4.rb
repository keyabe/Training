str = IO.read("data.txt")
data = (str.reverse).split(' ')
data.each{|x| puts (Math.sqrt(x.to_f)).round(4)}
