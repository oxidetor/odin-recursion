def merge_sort(arr)
  return arr if arr.length == 1

  left = merge_sort(arr.slice(0, arr.length / 2))
  right = merge_sort(arr.slice(arr.length / 2, arr.length - 1))

  sorted = []
  sorted << (left[0] < right[0] ? left.shift : right.shift) until left.empty? || right.empty?
  left.empty? ? sorted + right : sorted + left
end

arr = [384, 317, 228, 359, 425, 300, 719, 395, 198, 570]
p merge_sort arr
