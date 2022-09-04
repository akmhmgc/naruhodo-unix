file1 = File.open('file1.txt', 'w')
puts file1.fileno

file2 = File.open('file2.txt', 'w')
puts file2.fileno

# クローズするとファイルディスクリプタ番号は次で再利用される
file2.close
file3 = File.open('file3.txt', 'w')
puts file3.fileno
