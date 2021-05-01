RSpec.describe 'test' do
  it 'test with "kyoto\ntokyo\n"' do
    io = IO.popen("ruby abc103/B.rb", "w+")
    io.puts("kyoto\ntokyo\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "abc\narc\n"' do
    io = IO.popen("ruby abc103/B.rb", "w+")
    io.puts("abc\narc\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

  it 'test with "aaaaaaaaaaaaaaab\naaaaaaaaaaaaaaab\n"' do
    io = IO.popen("ruby abc103/B.rb", "w+")
    io.puts("aaaaaaaaaaaaaaab\naaaaaaaaaaaaaaab\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

end
