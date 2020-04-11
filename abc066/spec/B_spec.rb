require 'rspec'

RSpec.describe 'test' do
  it 'test with "abaababaab\n"' do
    io = IO.popen("ruby abc066/B.rb", "w+")
    io.puts("abaababaab\n")
    io.close_write
    expect(io.readlines.join).to eq("6\n")
  end

  it 'test with "xxxx\n"' do
    io = IO.popen("ruby abc066/B.rb", "w+")
    io.puts("xxxx\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "abcabcabcabc\n"' do
    io = IO.popen("ruby abc066/B.rb", "w+")
    io.puts("abcabcabcabc\n")
    io.close_write
    expect(io.readlines.join).to eq("6\n")
  end

  it 'test with "akasakaakasakasakaakas\n"' do
    io = IO.popen("ruby abc066/B.rb", "w+")
    io.puts("akasakaakasakasakaakas\n")
    io.close_write
    expect(io.readlines.join).to eq("14\n")
  end

end
