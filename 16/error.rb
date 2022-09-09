fork do
  sleep 5
end

# Process.waitはブロッキング呼び出し
# 子プロセスが終了するまでその後の親プロセスは走らない
Process.wait
begin
  Process.wait(-1, Process::WNOHANG)
rescue Errno::ECHILD
end

puts 'プロセスが終了しました'
