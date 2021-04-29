RSpec.describe 'test' do
  it 'test with "4\n10 4 3\n1000 11 2\n998244353 897581057 595591169\n10000 6 14\n"' do
    io = IO.popen("ruby abc186/E.rb", "w+")
    io.puts("4\n10 4 3\n1000 11 2\n998244353 897581057 595591169\n10000 6 14\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n-1\n249561088\n3571\n")
  end

end
