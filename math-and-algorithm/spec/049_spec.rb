RSpec.describe 'test' do
  it 'test with "6\n"' do
    io = IO.popen("ruby math-and-algorithm/049.rb", "w+")
    io.puts("6\n")
    io.close_write
    expect(io.readlines.join).to eq("8\n")
  end

  it 'test with "8691200\n"' do
    io = IO.popen("ruby math-and-algorithm/049.rb", "w+")
    io.puts("8691200\n")
    io.close_write
    expect(io.readlines.join).to eq("922041576\n")
  end

end
