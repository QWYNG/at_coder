RSpec.describe 'test' do
  it 'test with "1\n24 30\n"' do
    io = IO.popen("ruby abc073/B.rb", "w+")
    io.puts("1\n24 30\n")
    io.close_write
    expect(io.readlines.join).to eq("7\n")
  end

  it 'test with "2\n6 8\n3 3\n"' do
    io = IO.popen("ruby abc073/B.rb", "w+")
    io.puts("2\n6 8\n3 3\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n")
  end

end
