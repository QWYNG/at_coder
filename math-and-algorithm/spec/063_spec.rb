RSpec.describe 'test' do
  it 'test with "2\n"' do
    io = IO.popen("ruby math-and-algorithm/063.rb", "w+")
    io.puts("2\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "3\n"' do
    io = IO.popen("ruby math-and-algorithm/063.rb", "w+")
    io.puts("3\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

end
