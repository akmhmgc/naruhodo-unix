IO.pipe do |read_io, write_io|
  # 1つ目のコマンドを実行する子プロセス
  fork do
    STDOUT.reopen(write_io) # 標準出力をパイプにつけかえる
    exec 'ps', '-x' # psコマンドを実行させる
  end

  # 2つ目のコマンドを実行する子プロセス
  fork do
    STDIN.reopen(read_io) # 標準入力をパイプにつけかえる
    exec 'wc', '-l'
  end
end
Process.waitall
