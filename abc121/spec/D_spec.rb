require 'rspec'

RSpec.describe 'test' do
  it 'test with "2 4\n"' do
    io = IO.popen("ruby abc121/D.rb", "w+")
    io.puts("2 4\n")
    io.close_write
    expect(io.readlines.join).to eq("5\n")
  end

  it 'test with "123 456\n"' do
    io = IO.popen("ruby abc121/D.rb", "w+")
    io.puts("123 456\n")
    io.close_write
    expect(io.readlines.join).to eq("435\n")
  end

  it 'test with "123456789012 123456789012\n"' do
    io = IO.popen("ruby abc121/D.rb", "w+")
    io.puts("123456789012 123456789012\n")
    io.close_write
    expect(io.readlines.join).to eq("123456789012\n")
  end

end
