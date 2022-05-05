RSpec.describe 'test' do
  it 'test with "53\n"' do
    io = IO.popen("ruby math-and-algorithm/012.rb", "w+")
    io.puts("53\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "77\n"' do
    io = IO.popen("ruby math-and-algorithm/012.rb", "w+")
    io.puts("77\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

  it 'test with "472249589291\n"' do
    io = IO.popen("ruby math-and-algorithm/012.rb", "w+")
    io.puts("472249589291\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

end
