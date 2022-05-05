RSpec.describe 'test' do
  it 'test with "3\n3\n1\n2\n"' do
    io = IO.popen("ruby abc065/B.rb", "w+")
    io.puts("3\n3\n1\n2\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "4\n3\n4\n1\n2\n"' do
    io = IO.popen("ruby abc065/B.rb", "w+")
    io.puts("4\n3\n4\n1\n2\n")
    io.close_write
    expect(io.readlines.join).to eq("-1\n")
  end

  it 'test with "5\n3\n3\n4\n2\n4\n"' do
    io = IO.popen("ruby abc065/B.rb", "w+")
    io.puts("5\n3\n3\n4\n2\n4\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

end
