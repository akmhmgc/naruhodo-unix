arr = [1,2,3]

fork do 

  # 変更が必要になる時点でメモリがコピーされる（コピーオンライト）
  arr << 5
  p arr
end

p arr
