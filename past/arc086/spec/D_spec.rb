RSpec.describe 'test' do
  it 'test with "2 2\n5 7\n"' do
    io = IO.popen("ruby arc086/D.rb", "w+")
    io.puts("2 2\n5 7\n")
    io.close_write
    expect(io.readlines.join).to eq("6\n")
  end

  it 'test with "3 4\n10 13 22\n"' do
    io = IO.popen("ruby arc086/D.rb", "w+")
    io.puts("3 4\n10 13 22\n")
    io.close_write
    expect(io.readlines.join).to eq("20\n")
  end

  it 'test with "1 100\n10\n"' do
    io = IO.popen("ruby arc086/D.rb", "w+")
    io.puts("1 100\n10\n")
    io.close_write
    expect(io.readlines.join).to eq("11\n")
  end

  it 'test with "10 123456789012345678\n228344079825412349 478465001534875275 398048921164061989 329102208281783917 779698519704384319 617456682030809556 561259383338846380 254083246422083141 458181156833851984 502254767369499613\n"' do
    io = IO.popen("ruby arc086/D.rb", "w+")
    io.puts("10 123456789012345678\n228344079825412349 478465001534875275 398048921164061989 329102208281783917 779698519704384319 617456682030809556 561259383338846380 254083246422083141 458181156833851984 502254767369499613\n")
    io.close_write
    expect(io.readlines.join).to eq("164286011\n")
  end

end
