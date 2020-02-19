require 'rspec'

RSpec.describe 'test' do
  it 'test with "sardine\n"' do
    io = IO.popen("ruby abc154/B.rb", "w+")
    io.puts("sardine\n")
    expect(io.gets).to eq("xxxxxxx\n")
  end

  it 'test with "xxxx\n"' do
    io = IO.popen("ruby abc154/B.rb", "w+")
    io.puts("xxxx\n")
    expect(io.gets).to eq("xxxx\n")
  end

  it 'test with "gone\n"' do
    io = IO.popen("ruby abc154/B.rb", "w+")
    io.puts("gone\n")
    expect(io.gets).to eq("xxxx\n")
  end

end
