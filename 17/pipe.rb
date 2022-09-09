reader, writer = IO.pipe

writer.write("Into the pipe I go...")
writer.write("\nInto the pipe I go...")
writer.close

puts reader.read
