require 'rspec'

RSpec.describe 'test' do
  it 'test with "3776\n"' do
    io = IO.popen("ruby abc131/A.rb", "w+")
    io.puts("3776\n")
    io.close_write
    expect(io.readlines.join).to eq("Bad\n")
  end

  it 'test with "8080\n"' do
    io = IO.popen("ruby abc131/A.rb", "w+")
    io.puts("8080\n")
    io.close_write
    expect(io.readlines.join).to eq("Good\n")
  end

  it 'test with "1333\n"' do
    io = IO.popen("ruby abc131/A.rb", "w+")
    io.puts("1333\n")
    io.close_write
    expect(io.readlines.join).to eq("Bad\n")
  end

  it 'test with "0024\n"' do
    io = IO.popen("ruby abc131/A.rb", "w+")
    io.puts("0024\n")
    io.close_write
    expect(io.readlines.join).to eq("Bad\n")
  end

end
