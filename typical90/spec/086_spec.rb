RSpec.describe 'test' do
  it 'test with "4 2\n1 2 3 50\n2 3 4 45\n"' do
    io = IO.popen("ruby typical90/086.rb", "w+")
    io.puts("4 2\n1 2 3 50\n2 3 4 45\n")
    io.close_write
    expect(io.readlines.join).to eq("13\n")
  end

  it 'test with "8 2\n2 3 6 1152886174205865983\n1 2 8 1116611213275394047\n"' do
    io = IO.popen("ruby typical90/086.rb", "w+")
    io.puts("8 2\n2 3 6 1152886174205865983\n1 2 8 1116611213275394047\n")
    io.close_write
    expect(io.readlines.join).to eq("395781543\n")
  end

end
