def fibs(n)
  (0...n).inject([]) do |acc, num|
    acc << case num
           in 0..1 => n
             n
           else
             acc[-1] + acc[-2]
           end
  end
end

def fibs_rec(n, result = [])
  return (0...n).to_a if n in (1..2)

  fibs_rec(n - 1, result) << fibs_rec(n - 1, result).last + fibs_rec(n - 2, result).last
end

p fibs(8)
p fibs_rec(8)
