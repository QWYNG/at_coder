require 'rspec'

RSpec.describe 'test' do
  it 'test with "5\n1 2\n1 3\n3 4\n3 5\n"' do
    io = IO.popen("ruby hitachi2020/C.rb", "w+")
    io.puts("5\n1 2\n1 3\n3 4\n3 5\n")
    io.close_write
    expect(io.readlines.join).to eq("1 2 5 4 3 \n")
  end

end
