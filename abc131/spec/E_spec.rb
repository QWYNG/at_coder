RSpec.describe 'test' do
  it 'test with "5 3\n"' do
    io = IO.popen("ruby abc131/E.rb", "w+")
    io.puts("5 3\n")
    io.close_write
    expect(io.readlines.join).to eq("5\n4 3\n1 2\n3 1\n4 5\n2 3\n")
  end

  it 'test with "5 8\n"' do
    io = IO.popen("ruby abc131/E.rb", "w+")
    io.puts("5 8\n")
    io.close_write
    expect(io.readlines.join).to eq("-1\n")
  end

end
