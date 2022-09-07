puts "parent: #{Process.pid}"

# ブロックを渡さないと以降の処理が子プロセス内で走る
puts fork {}

puts "parent: #{Process.pid}"
