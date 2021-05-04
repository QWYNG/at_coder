RSpec.describe 'test' do
  it 'test with "3\n6\n2\n6\n"' do
    io = IO.popen("ruby abc073/C.rb", "w+")
    io.puts("3\n6\n2\n6\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "4\n2\n5\n5\n2\n"' do
    io = IO.popen("ruby abc073/C.rb", "w+")
    io.puts("4\n2\n5\n5\n2\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "6\n12\n22\n16\n22\n18\n12\n"' do
    io = IO.popen("ruby abc073/C.rb", "w+")
    io.puts("6\n12\n22\n16\n22\n18\n12\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

end
