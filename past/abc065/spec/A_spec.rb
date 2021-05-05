RSpec.describe 'test' do
  it 'test with "4 3 6\n"' do
    io = IO.popen("ruby abc065/A.rb", "w+")
    io.puts("4 3 6\n")
    io.close_write
    expect(io.readlines.join).to eq("safe\n")
  end

  it 'test with "6 5 1\n"' do
    io = IO.popen("ruby abc065/A.rb", "w+")
    io.puts("6 5 1\n")
    io.close_write
    expect(io.readlines.join).to eq("delicious\n")
  end

  it 'test with "3 7 12\n"' do
    io = IO.popen("ruby abc065/A.rb", "w+")
    io.puts("3 7 12\n")
    io.close_write
    expect(io.readlines.join).to eq("dangerous\n")
  end

end
