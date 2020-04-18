require 'rspec'

RSpec.describe 'test' do
  it 'test with "20\n"' do
    io = IO.popen("ruby abc149/C.rb", "w+")
    io.puts("20\n")
    io.close_write
    expect(io.readlines.join).to eq("23\n")
  end

  it 'test with "2\n"' do
    io = IO.popen("ruby abc149/C.rb", "w+")
    io.puts("2\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "99992\n"' do
    io = IO.popen("ruby abc149/C.rb", "w+")
    io.puts("99992\n")
    io.close_write
    expect(io.readlines.join).to eq("100003\n")
  end

end
