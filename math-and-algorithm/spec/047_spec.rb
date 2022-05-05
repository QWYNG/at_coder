RSpec.describe 'test' do
  it 'test with "8 7\n1 5\n1 6\n2 7\n3 7\n4 6\n5 8\n6 8\n"' do
    io = IO.popen("ruby math-and-algorithm/047.rb", "w+")
    io.puts("8 7\n1 5\n1 6\n2 7\n3 7\n4 6\n5 8\n6 8\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "6 7\n1 6\n2 6\n3 6\n2 4\n3 5\n1 3\n1 4\n"' do
    io = IO.popen("ruby math-and-algorithm/047.rb", "w+")
    io.puts("6 7\n1 6\n2 6\n3 6\n2 4\n3 5\n1 3\n1 4\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

end
