RSpec.describe 'test' do
  it 'test with "12\n"' do
    io = IO.popen("ruby math-and-algorithm/013.rb", "w+")
    io.puts("12\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n2\n3\n4\n6\n12\n")
  end

  it 'test with "827847039317\n"' do
    io = IO.popen("ruby math-and-algorithm/013.rb", "w+")
    io.puts("827847039317\n")
    io.close_write
    expect(io.readlines.join).to eq("909863\n1\n909859\n827847039317\n")
  end

end
