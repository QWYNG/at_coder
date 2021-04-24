require 'rspec'

RSpec.describe 'test' do
  it 'test with "3 2 1\n3 1 5\n1 2\n1 3\n"' do
    io = IO.popen("ruby abc199/F.rb", "w+")
    io.puts("3 2 1\n3 1 5\n1 2\n1 3\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n500000005\n500000008\n")
  end

  it 'test with "3 2 2\n12 48 36\n1 2\n1 3\n"' do
    io = IO.popen("ruby abc199/F.rb", "w+")
    io.puts("3 2 2\n12 48 36\n1 2\n1 3\n")
    io.close_write
    expect(io.readlines.join).to eq("750000036\n36\n250000031\n")
  end

  it 'test with "4 5 1000\n578 173 489 910\n1 2\n2 3\n3 4\n4 1\n1 3\n"' do
    io = IO.popen("ruby abc199/F.rb", "w+")
    io.puts("4 5 1000\n578 173 489 910\n1 2\n2 3\n3 4\n4 1\n1 3\n")
    io.close_write
    expect(io.readlines.join).to eq("201113830\n45921509\n67803140\n685163678\n")
  end

end
