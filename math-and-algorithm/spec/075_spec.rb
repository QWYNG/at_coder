RSpec.describe 'test' do
  it 'test with "5\n20 22 25 43 50\n"' do
    io = IO.popen("ruby math-and-algorithm/075.rb", "w+")
    io.puts("5\n20 22 25 43 50\n")
    io.close_write
    expect(io.readlines.join).to eq("480\n")
  end

end
