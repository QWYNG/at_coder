require 'rspec'

RSpec.describe 'test' do
  it 'test with "4 9 2 3\n"' do
    io = IO.popen("ruby abc131/C.rb", "w+")
    io.puts("4 9 2 3\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "10 40 6 8\n"' do
    io = IO.popen("ruby abc131/C.rb", "w+")
    io.puts("10 40 6 8\n")
    io.close_write
    expect(io.readlines.join).to eq("23\n")
  end

  it 'test with "314159265358979323 846264338327950288 419716939 937510582\n"' do
    io = IO.popen("ruby abc131/C.rb", "w+")
    io.puts("314159265358979323 846264338327950288 419716939 937510582\n")
    io.close_write
    expect(io.readlines.join).to eq("532105071133627368\n")
  end

end
