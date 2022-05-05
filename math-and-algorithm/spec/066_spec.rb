RSpec.describe 'test' do
  it 'test with "3 1\n"' do
    io = IO.popen("ruby math-and-algorithm/066.rb", "w+")
    io.puts("3 1\n")
    io.close_write
    expect(io.readlines.join).to eq("24\n")
  end

end
