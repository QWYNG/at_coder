RSpec.describe 'test' do
  it 'test with "3 3\n0 0 0\n0 0 0\n0 0 0\n1 1 0\n1 1 0\n0 0 0\n"' do
    io = IO.popen("ruby typical90/079.rb", "w+")
    io.puts("3 3\n0 0 0\n0 0 0\n0 0 0\n1 1 0\n1 1 0\n0 0 0\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n1\n")
  end

  it 'test with "3 3\n0 0 0\n0 0 0\n0 0 0\n0 0 0\n0 1 0\n0 0 0\n"' do
    io = IO.popen("ruby typical90/079.rb", "w+")
    io.puts("3 3\n0 0 0\n0 0 0\n0 0 0\n0 0 0\n0 1 0\n0 0 0\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

  it 'test with "5 5\n6 17 18 29 22\n39 50 25 39 25\n34 34 8 25 17\n28 48 25 47 42\n27 47 24 32 28\n4 6 3 29 28\n48 50 21 48 29\n44 44 19 47 28\n4 49 46 29 28\n4 49 45 1 1\n"' do
    io = IO.popen("ruby typical90/079.rb", "w+")
    io.puts("5 5\n6 17 18 29 22\n39 50 25 39 25\n34 34 8 25 17\n28 48 25 47 42\n27 47 24 32 28\n4 6 3 29 28\n48 50 21 48 29\n44 44 19 47 28\n4 49 46 29 28\n4 49 45 1 1\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n140\n")
  end

end
