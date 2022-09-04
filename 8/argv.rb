# ユーザーから help オプションを渡されたかを確認する
puts ARGV.include?('--help')
# -c オプションの値を取得する
puts ARGV.include?('-c') && ARGV[ARGV.index('-c')+1]
