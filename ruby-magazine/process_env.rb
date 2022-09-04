# 環境変数はプロセスをまたいで存在する（それはそう）
ENV['P1'] = 'テスト'
puts "pid:#{Process.pid}から呼び出されたP1: #{ENV['P1']}"

fork do
  puts "pid:#{Process.pid}から呼び出されたP1: #{ENV['P1']}"
  exec 'echo $P1'
end
