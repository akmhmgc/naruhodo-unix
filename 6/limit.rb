Process.setrlimit(:NOFILE, 3)
File.open('/dev/null')
