RSpec.describe 'test' do
  it 'test with "2\n1 2\n1 2\n"' do
    io = IO.popen("ruby typical90/066.rb", "w+")
    io.puts("2\n1 2\n1 2\n")
    io.close_write
    expect(io.readlines.join).to eq("0.250000000000\n")
  end

  it 'test with "3\n3 3\n1 1\n4 4\n"' do
    io = IO.popen("ruby typical90/066.rb", "w+")
    io.puts("3\n3 3\n1 1\n4 4\n")
    io.close_write
    expect(io.readlines.join).to eq("1.000000000000\n")
  end

  it 'test with "10\n1 10\n38 40\n8 87\n2 9\n75 100\n45 50\n89 92\n27 77\n23 88\n62 81\n"' do
    io = IO.popen("ruby typical90/066.rb", "w+")
    io.puts("10\n1 10\n38 40\n8 87\n2 9\n75 100\n45 50\n89 92\n27 77\n23 88\n62 81\n")
    io.close_write
    expect(io.readlines.join).to eq("13.696758921226\n")
  end

end
