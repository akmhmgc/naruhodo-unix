fork do
  puts Process.pid
  # 10秒間動き続けるデーモンプロセスの完成
  sleep 10
  puts 'hey yo'
end
abort 'Parent process died...'
