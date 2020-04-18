require 'rspec'

RSpec.describe 'test' do
  it 'test with "5 3\n10 14 19 34 33\n"' do
    io = IO.popen("ruby abc149/E.rb", "w+")
    io.puts("5 3\n10 14 19 34 33\n")
    io.close_write
    expect(io.readlines.join).to eq("202\n")
  end

  it 'test with "9 14\n1 3 5 110 24 21 34 5 3\n"' do
    io = IO.popen("ruby abc149/E.rb", "w+")
    io.puts("9 14\n1 3 5 110 24 21 34 5 3\n")
    io.close_write
    expect(io.readlines.join).to eq("1837\n")
  end

  it 'test with "9 73\n67597 52981 5828 66249 75177 64141 40773 79105 16076\n"' do
    io = IO.popen("ruby abc149/E.rb", "w+")
    io.puts("9 73\n67597 52981 5828 66249 75177 64141 40773 79105 16076\n")
    io.close_write
    expect(io.readlines.join).to eq("8128170\n")
  end

end
