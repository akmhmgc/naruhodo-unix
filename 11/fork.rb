var = 'hoge'

fork do
  p var
  var2 = 'fuga'
end
fork do
  p var2
end
