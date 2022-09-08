fork do
  sleep 5
end

# Process.waitはブロッキング呼び出し
# 子プロセスが終了するまでその後の親プロセスは走らない
Process.wait
puts 'プロセスが終了しました'
