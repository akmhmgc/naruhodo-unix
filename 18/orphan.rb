fork do 
  sleep 1
  # 親プロセスが先に死んだ場合、子プロセスからみた親プロセスはinitプロセス(id:0)となる
  puts "real parent: #{Process.ppid}"
end

puts "parent? #{Process.pid}"

