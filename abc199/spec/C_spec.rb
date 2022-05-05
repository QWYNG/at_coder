require 'rspec'

RSpec.describe 'test' do
  it 'test with "2\nFLIP\n2\n2 0 0\n1 1 4\n"' do
    io = IO.popen("ruby abc199/C.rb", "w+")
    io.puts("2\nFLIP\n2\n2 0 0\n1 1 4\n")
    io.close_write
    expect(io.readlines.join).to eq("LPFI\n")
  end

  it 'test with "2\nFLIP\n6\n1 1 3\n2 0 0\n1 1 2\n1 2 3\n2 0 0\n1 1 4\n"' do
    io = IO.popen("ruby abc199/C.rb", "w+")
    io.puts("2\nFLIP\n6\n1 1 3\n2 0 0\n1 1 2\n1 2 3\n2 0 0\n1 1 4\n")
    io.close_write
    expect(io.readlines.join).to eq("ILPF\n")
  end

end
