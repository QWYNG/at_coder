RSpec.describe 'test' do
  it 'test with "1210\n"' do
    io = IO.popen("ruby abc198/B.rb", "w+")
    io.puts("1210\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "777\n"' do
    io = IO.popen("ruby abc198/B.rb", "w+")
    io.puts("777\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "123456789\n"' do
    io = IO.popen("ruby abc198/B.rb", "w+")
    io.puts("123456789\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

end
