fork do
  # 子プロセス内で定義
  ENV['MESSAGE'] = 'wing it!'
  puts "子プロセスから見たMESSAGE: #{ENV['MESSAGE']}"
end

# 親プロセスでは呼ばれない
puts "親プロセスから見たMESSAGE: #{ENV['MESSAGE']}"

puts ENV['HOGE']
