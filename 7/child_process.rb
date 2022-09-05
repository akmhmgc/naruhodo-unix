fork do
  ENV['MESSAGE'] = 'hogehoge'
  puts "#{Process.pid}:#{ENV['MESSAGE']}" #=> 66840:hogehoge
end

fork do
  puts "#{Process.pid}:#{ENV['MESSAGE'] || 'not defined'}" #=> 66841:not defined
end
