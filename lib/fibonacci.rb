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

def fibs_rec(n)
  return *(0...n) if n in (1..2)

  fibs_rec(n - 1) << fibs_rec(n - 1).last(2).sum
end

def fibs_ol(n)
  (1..2).include?(n) ? (0...n).to_a : fibs_ol(n - 1) << fibs_ol(n - 1).last(2).sum
end

p fibs(8)
p fibs_rec(8)
p fibs_ol(8)
