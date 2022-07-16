def merge_sort(arr)
  return arr if arr.length == 1

  middle = arr.length / 2
  left = merge_sort(arr.take(middle))
  right = merge_sort(arr.drop(middle))
  merge(left, right)
end

def merge(left, right)
  sorted = []
  sorted << (left.first < right.first ? left.shift : right.shift) until left.empty? || right.empty?
  sorted + left + right
end

arr = [384, 317, 228, 359, 425, 300, 719, 395, 198, 570]
p merge_sort arr
