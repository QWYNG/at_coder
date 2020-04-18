require 'rspec'

RSpec.describe 'test' do
  it 'test with "oder atc\n"' do
    io = IO.popen("ruby abc149/A.rb", "w+")
    io.puts("oder atc\n")
    io.close_write
    expect(io.readlines.join).to eq("atcoder\n")
  end

  it 'test with "humu humu\n"' do
    io = IO.popen("ruby abc149/A.rb", "w+")
    io.puts("humu humu\n")
    io.close_write
    expect(io.readlines.join).to eq("humuhumu\n")
  end

end
