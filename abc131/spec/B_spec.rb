require 'rspec'

RSpec.describe 'test' do
  it 'test with "5 2\n"' do
    io = IO.popen("ruby abc131/B.rb", "w+")
    io.puts("5 2\n")
    io.close_write
    expect(io.readlines.join).to eq("18\n")
  end

  it 'test with "3 -1\n"' do
    io = IO.popen("ruby abc131/B.rb", "w+")
    io.puts("3 -1\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "30 -50\n"' do
    io = IO.popen("ruby abc131/B.rb", "w+")
    io.puts("30 -50\n")
    io.close_write
    expect(io.readlines.join).to eq("-1044\n")
  end

end
