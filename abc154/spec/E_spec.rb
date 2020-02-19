require 'rspec'

RSpec.describe 'test' do
  it 'test with "100\n1\n"' do
    io = IO.popen("ruby abc154/E.rb", "w+")
    io.puts("100\n1\n")
    expect(io.gets).to eq("19\n")
  end

  it 'test with "25\n2\n"' do
    io = IO.popen("ruby abc154/E.rb", "w+")
    io.puts("25\n2\n")
    expect(io.gets).to eq("14\n")
  end

  it 'test with "314159\n2\n"' do
    io = IO.popen("ruby abc154/E.rb", "w+")
    io.puts("314159\n2\n")
    expect(io.gets).to eq("937\n")
  end

  it 'test with "9999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999\n3\n"' do
    io = IO.popen("ruby abc154/E.rb", "w+")
    io.puts("9999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999\n3\n")
    expect(io.gets).to eq("117879300\n")
  end

end
