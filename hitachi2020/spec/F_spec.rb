require 'rspec'

RSpec.describe 'test' do
  it 'test with "6\n1 6\n2 1\n5 2\n3 4\n2 3\n"' do
    io = IO.popen("ruby hitachi2020/F.rb", "w+")
    io.puts("6\n1 6\n2 1\n5 2\n3 4\n2 3\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "3\n1 2\n2 3\n"' do
    io = IO.popen("ruby hitachi2020/F.rb", "w+")
    io.puts("3\n1 2\n2 3\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "9\n1 2\n2 3\n4 2\n1 7\n6 1\n2 5\n5 9\n6 8\n"' do
    io = IO.popen("ruby hitachi2020/F.rb", "w+")
    io.puts("9\n1 2\n2 3\n4 2\n1 7\n6 1\n2 5\n5 9\n6 8\n")
    io.close_write
    expect(io.readlines.join).to eq("27\n")
  end

  it 'test with "19\n2 4\n15 8\n1 16\n1 3\n12 19\n1 18\n7 11\n11 15\n12 9\n1 6\n7 14\n18 2\n13 12\n13 5\n16 13\n7 1\n11 10\n7 17\n"' do
    io = IO.popen("ruby hitachi2020/F.rb", "w+")
    io.puts("19\n2 4\n15 8\n1 16\n1 3\n12 19\n1 18\n7 11\n11 15\n12 9\n1 6\n7 14\n18 2\n13 12\n13 5\n16 13\n7 1\n11 10\n7 17\n")
    io.close_write
    expect(io.readlines.join).to eq("78732\n")
  end

end
