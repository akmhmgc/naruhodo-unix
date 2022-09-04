# プロセスは入出力先を「ファイル」という抽象化された概念で扱う

puts "標準入力のファイルディスクリプタ: #{STDIN.fileno}"
puts "標準出力のファイルディスクリプタ#{STDOUT.fileno}"
file_a = File.open('a.txt', 'w')
puts "a.txt ファイルへの入出力のファイルディスクリプタ: #{file_a.fileno}"
