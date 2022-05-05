RSpec.describe 'test' do
  it 'test with "1214\n4\n"' do
    io = IO.popen("ruby abc106/C.rb", "w+")
    io.puts("1214\n4\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "3\n157\n"' do
    io = IO.popen("ruby abc106/C.rb", "w+")
    io.puts("3\n157\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "299792458\n9460730472580800\n"' do
    io = IO.popen("ruby abc106/C.rb", "w+")
    io.puts("299792458\n9460730472580800\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

end
