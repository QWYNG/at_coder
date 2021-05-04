RSpec.describe 'test' do
  it 'test with "29\n"' do
    io = IO.popen("ruby abc073/A.rb", "w+")
    io.puts("29\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "72\n"' do
    io = IO.popen("ruby abc073/A.rb", "w+")
    io.puts("72\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

  it 'test with "91\n"' do
    io = IO.popen("ruby abc073/A.rb", "w+")
    io.puts("91\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

end
