favourite = fork do
  exit 77
end
middle_child = fork do
  abort 'I want to be waited on!'
end

# Process.wait2では特定のプロセスを待つことができる
pid,status = Process.wait2(favourite)
p [pid, status]
