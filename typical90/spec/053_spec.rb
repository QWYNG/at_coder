RSpec.describe 'test' do
  it 'test with "T\n"' do
    io = IO.popen("ruby typical90/053.rb", "w+")
    io.puts("T\n")
    io.close_write
    expect(io.readlines.join).to eq("N\n")
  end

  it 'test with "? i\n"' do
    io = IO.popen("ruby typical90/053.rb", "w+")
    io.puts("? i\n")
    io.close_write
    expect(io.readlines.join).to eq("A_i\n")
  end

  it 'test with "! A_{\\mathrm{max}}\n"' do
    io = IO.popen("ruby typical90/053.rb", "w+")
    io.puts("! A_{\\mathrm{max}}\n")
    io.close_write
    expect(io.readlines.join).to eq()
  end

end
