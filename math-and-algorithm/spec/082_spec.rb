RSpec.describe 'test' do
  it 'test with "3\n123 86399\n1 86400\n86399 86400\n"' do
    io = IO.popen("ruby math-and-algorithm/082.rb", "w+")
    io.puts("3\n123 86399\n1 86400\n86399 86400\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

end
