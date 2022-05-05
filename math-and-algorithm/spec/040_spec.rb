RSpec.describe 'test' do
  it 'test with "4\n8 6 9\n6\n2\n1\n3\n2\n3\n4\n"' do
    io = IO.popen("ruby math-and-algorithm/040.rb", "w+")
    io.puts("4\n8 6 9\n6\n2\n1\n3\n2\n3\n4\n")
    io.close_write
    expect(io.readlines.join).to eq("43\n")
  end

end
