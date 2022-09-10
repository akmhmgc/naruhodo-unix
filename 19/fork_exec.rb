fork do
  exec 'echo hello'
end

puts Process.wait
