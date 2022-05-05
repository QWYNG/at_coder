require 'rspec'

RSpec.describe 'test' do
  it 'test with "2\n3 2\n7 5\n"' do
    io = IO.popen("ruby abc199/B.rb", "w+")
    io.puts("2\n3 2\n7 5\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "3\n1 5 3\n10 7 3\n"' do
    io = IO.popen("ruby abc199/B.rb", "w+")
    io.puts("3\n1 5 3\n10 7 3\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "3\n3 2 5\n6 9 8\n"' do
    io = IO.popen("ruby abc199/B.rb", "w+")
    io.puts("3\n3 2 5\n6 9 8\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

end
