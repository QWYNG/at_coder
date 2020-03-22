require 'rspec'

RSpec.describe 'test' do
  it 'test with "hihi\n"' do
    io = IO.popen("ruby hitachi2020/A.rb", "w+")
    io.puts("hihi\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "hi\n"' do
    io = IO.popen("ruby hitachi2020/A.rb", "w+")
    io.puts("hi\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "ha\n"' do
    io = IO.popen("ruby hitachi2020/A.rb", "w+")
    io.puts("ha\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

end
