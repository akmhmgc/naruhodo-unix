read_io, write_io = IO.pipe


puts read_io.fileno
puts write_io.fileno
