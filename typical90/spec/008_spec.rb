RSpec.describe 'test' do
  it 'test with "10\nattcordeer\n"' do
    io = IO.popen("ruby typical90/008.rb", "w+")
    io.puts("10\nattcordeer\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n")
  end

  it 'test with "41\nbtwogablwetwoiehocghiewobadegwhoihegnldir\n"' do
    io = IO.popen("ruby typical90/008.rb", "w+")
    io.puts("41\nbtwogablwetwoiehocghiewobadegwhoihegnldir\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "140\naaaaaaaaaaaaaaaaaaaattttttttttttttttttttccccccccccccccccccccooooooooooooooooooooddddddddddddddddddddeeeeeeeeeeeeeeeeeeeerrrrrrrrrrrrrrrrrrrr\n"' do
    io = IO.popen("ruby typical90/008.rb", "w+")
    io.puts("140\naaaaaaaaaaaaaaaaaaaattttttttttttttttttttccccccccccccccccccccooooooooooooooooooooddddddddddddddddddddeeeeeeeeeeeeeeeeeeeerrrrrrrrrrrrrrrrrrrr\n")
    io.close_write
    expect(io.readlines.join).to eq("279999993\n")
  end

end
