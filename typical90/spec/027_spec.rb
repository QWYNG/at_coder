RSpec.describe 'test' do
  it 'test with "5\ne869120\natcoder\ne869120\nsquare1001\nsquare1001\n"' do
    io = IO.popen("ruby typical90/027.rb", "w+")
    io.puts("5\ne869120\natcoder\ne869120\nsquare1001\nsquare1001\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n2\n4\n")
  end

  it 'test with "4\ntaro\nhanako\nyuka\ntakashi\n"' do
    io = IO.popen("ruby typical90/027.rb", "w+")
    io.puts("4\ntaro\nhanako\nyuka\ntakashi\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n2\n3\n4\n")
  end

  it 'test with "10\nsquare869120\nsquare869120\nsquare869120\nsquare869120\nsquare869120\nsquare869120\nsquare869120\nsquare869120\nsquare869120\nsquare869120\n"' do
    io = IO.popen("ruby typical90/027.rb", "w+")
    io.puts("10\nsquare869120\nsquare869120\nsquare869120\nsquare869120\nsquare869120\nsquare869120\nsquare869120\nsquare869120\nsquare869120\nsquare869120\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

end
