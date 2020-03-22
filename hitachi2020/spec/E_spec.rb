require 'rspec'

RSpec.describe 'test' do
  it 'test with "1 2\n"' do
    io = IO.popen("ruby hitachi2020/E.rb", "w+")
    io.puts("1 2\n")
    io.close_write
    expect(io.readlines.join).to eq("111\n")
  end

end
