reader, writer = IO.pipe

fork do
  # 子プロセスでは読み込みを行わないので閉じる
  reader.close
  10.times do
  # 力仕事
    writer.puts 'Another one bites the dust'
  end
end

# 親プロセスでは書き込みを行わないので閉じる
writer.close 

while message = reader.gets
  $stdout.puts message
end
