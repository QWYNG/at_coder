RSpec.describe 'test' do
  it 'test with "3 34\n3 14\n15 9\n26 5\n"' do
    io = IO.popen("ruby typical90/056.rb", "w+")
    io.puts("3 34\n3 14\n15 9\n26 5\n")
    io.close_write
    expect(io.readlines.join).to eq("BAB\n")
  end

  it 'test with "5 77\n1 16\n3 91\n43 9\n4 26\n23 11\n"' do
    io = IO.popen("ruby typical90/056.rb", "w+")
    io.puts("5 77\n1 16\n3 91\n43 9\n4 26\n23 11\n")
    io.close_write
    expect(io.readlines.join).to eq("BABBA\n")
  end

  it 'test with "5 59\n8 13\n55 5\n58 8\n23 14\n4 61\n"' do
    io = IO.popen("ruby typical90/056.rb", "w+")
    io.puts("5 59\n8 13\n55 5\n58 8\n23 14\n4 61\n")
    io.close_write
    expect(io.readlines.join).to eq("Impossible\n")
  end

end
