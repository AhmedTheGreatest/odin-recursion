def fibs(num)
  sequence = [0, 1]
  (2..num - 1).each do |i|
    sequence << sequence[i - 1] + sequence[i - 2]
  end
  sequence
end

def fibs_rec(num)
  return [0] if num.zero?
  return [0, 1] if num == 1

  array = fibs_rec(num - 1)
  array << array[-2] + array[-1]
end

p fibs_rec(8)
