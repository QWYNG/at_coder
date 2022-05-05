RSpec.describe 'test' do
  it 'test with "3\n"' do
    io = IO.popen("ruby math-and-algorithm/053.rb", "w+")
    io.puts("3\n")
    io.close_write
    expect(io.readlines.join).to eq("85\n")
  end

  it 'test with "45\n"' do
    io = IO.popen("ruby math-and-algorithm/053.rb", "w+")
    io.puts("45\n")
    io.close_write
    expect(io.readlines.join).to eq("414031736\n")
  end

end
