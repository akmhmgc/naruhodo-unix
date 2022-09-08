pid = fork { sleep 1 }

puts pid
# プロセスがゾンビ状態になるのを保証する
Process.detach pid

sleep
