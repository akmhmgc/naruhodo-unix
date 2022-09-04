# 標準入力を受け取ってファイルに書き込みを行う
text = gets
file = File.open('a.txt', 'w')
STDOUT.reopen(file)
puts text
