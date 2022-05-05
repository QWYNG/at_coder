RSpec.describe 'test' do
  it 'test with "3\n12 18 14\n"' do
    io = IO.popen("ruby math-and-algorithm/017.rb", "w+")
    io.puts("3\n12 18 14\n")
    io.close_write
    expect(io.readlines.join).to eq("252\n")
  end

end
