require 'rspec'

RSpec.describe 'test' do
  it 'test with "2 2 4\n"' do
    io = IO.popen("ruby abc199/A.rb", "w+")
    io.puts("2 2 4\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "10 10 10\n"' do
    io = IO.popen("ruby abc199/A.rb", "w+")
    io.puts("10 10 10\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

  it 'test with "3 4 5\n"' do
    io = IO.popen("ruby abc199/A.rb", "w+")
    io.puts("3 4 5\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

end
