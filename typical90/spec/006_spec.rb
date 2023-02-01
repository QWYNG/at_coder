RSpec.describe 'test' do
  it 'test with "7 3\natcoder\n"' do
    io = IO.popen("ruby typical90/006.rb", "w+")
    io.puts("7 3\natcoder\n")
    io.close_write
    expect(io.readlines.join).to eq("acd\n")
  end

  it 'test with "14 5\nkittyonyourlap\n"' do
    io = IO.popen("ruby typical90/006.rb", "w+")
    io.puts("14 5\nkittyonyourlap\n")
    io.close_write
    expect(io.readlines.join).to eq("inlap\n")
  end

end
