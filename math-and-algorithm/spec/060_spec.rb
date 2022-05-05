RSpec.describe 'test' do
  it 'test with "4\n"' do
    io = IO.popen("ruby math-and-algorithm/060.rb", "w+")
    io.puts("4\n")
    io.close_write
    expect(io.readlines.join).to eq("Second\n")
  end

end
