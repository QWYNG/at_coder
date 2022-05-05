RSpec.describe 'test' do
  it 'test with "33 88\n"' do
    io = IO.popen("ruby math-and-algorithm/015.rb", "w+")
    io.puts("33 88\n")
    io.close_write
    expect(io.readlines.join).to eq("11\n")
  end

  it 'test with "123 777\n"' do
    io = IO.popen("ruby math-and-algorithm/015.rb", "w+")
    io.puts("123 777\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

end
