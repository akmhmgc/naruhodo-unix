fork do
  5.times do
    sleep 1
    puts 'I am an orphan!'
  end
end
# 子プロセスが終了するまで待つ
Process.wait
abort 'Parent process died...'
