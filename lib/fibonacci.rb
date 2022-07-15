def fibs(n)
  (0...n).inject([]) do |acc, num|
    acc << case num
           in 0
             0
           in 1
             1
           else
             acc[-1] + acc[-2]
           end
  end
end

p fibs(8)
