RSpec.describe 'test' do
  it 'test with "3\n5 1 2\n"' do
    io = IO.popen("ruby math-and-algorithm/076.rb", "w+")
    io.puts("3\n5 1 2\n")
    io.close_write
    expect(io.readlines.join).to eq("8\n")
  end

  it 'test with "5\n31 41 59 26 53\n"' do
    io = IO.popen("ruby math-and-algorithm/076.rb", "w+")
    io.puts("5\n31 41 59 26 53\n")
    io.close_write
    expect(io.readlines.join).to eq("176\n")
  end

end
