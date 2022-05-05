RSpec.describe 'test' do
  it 'test with "4\n"' do
    io = IO.popen("ruby math-and-algorithm/029.rb", "w+")
    io.puts("4\n")
    io.close_write
    expect(io.readlines.join).to eq("5\n")
  end

  it 'test with "45\n"' do
    io = IO.popen("ruby math-and-algorithm/029.rb", "w+")
    io.puts("45\n")
    io.close_write
    expect(io.readlines.join).to eq("1836311903\n")
  end

end
