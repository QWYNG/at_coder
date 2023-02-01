RSpec.describe 'test' do
  it 'test with "3 4\n1 1\n2 5\n7 4\n"' do
    io = IO.popen("ruby typical90/081.rb", "w+")
    io.puts("3 4\n1 1\n2 5\n7 4\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "2 123\n4 5\n678 901\n"' do
    io = IO.popen("ruby typical90/081.rb", "w+")
    io.puts("2 123\n4 5\n678 901\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "7 10\n20 20\n20 20\n20 30\n20 40\n30 20\n30 30\n40 20\n"' do
    io = IO.popen("ruby typical90/081.rb", "w+")
    io.puts("7 10\n20 20\n20 20\n20 30\n20 40\n30 20\n30 30\n40 20\n")
    io.close_write
    expect(io.readlines.join).to eq("5\n")
  end

end
