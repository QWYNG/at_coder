require 'rspec'

RSpec.describe 'test' do
  it 'test with "5 2\n8 7 6\nrsrpr\n"' do
    io = IO.popen("ruby abc149/D.rb", "w+")
    io.puts("5 2\n8 7 6\nrsrpr\n")
    io.close_write
    expect(io.readlines.join).to eq("27\n")
  end

  it 'test with "7 1\n100 10 1\nssssppr\n"' do
    io = IO.popen("ruby abc149/D.rb", "w+")
    io.puts("7 1\n100 10 1\nssssppr\n")
    io.close_write
    expect(io.readlines.join).to eq("211\n")
  end

  it 'test with "30 5\n325 234 123\nrspsspspsrpspsppprpsprpssprpsr\n"' do
    io = IO.popen("ruby abc149/D.rb", "w+")
    io.puts("30 5\n325 234 123\nrspsspspsrpspsppprpsprpssprpsr\n")
    io.close_write
    expect(io.readlines.join).to eq("4996\n")
  end

end
