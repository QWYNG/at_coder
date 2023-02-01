RSpec.describe 'test' do
  it 'test with "3 34\n1\n8 13 26\n"' do
    io = IO.popen("ruby typical90/001.rb", "w+")
    io.puts("3 34\n1\n8 13 26\n")
    io.close_write
    expect(io.readlines.join).to eq("13\n")
  end

  it 'test with "7 45\n2\n7 11 16 20 28 34 38\n"' do
    io = IO.popen("ruby typical90/001.rb", "w+")
    io.puts("7 45\n2\n7 11 16 20 28 34 38\n")
    io.close_write
    expect(io.readlines.join).to eq("12\n")
  end

  it 'test with "3 100\n1\n28 54 81\n"' do
    io = IO.popen("ruby typical90/001.rb", "w+")
    io.puts("3 100\n1\n28 54 81\n")
    io.close_write
    expect(io.readlines.join).to eq("46\n")
  end

  it 'test with "3 100\n2\n28 54 81\n"' do
    io = IO.popen("ruby typical90/001.rb", "w+")
    io.puts("3 100\n2\n28 54 81\n")
    io.close_write
    expect(io.readlines.join).to eq("26\n")
  end

  it 'test with "20 1000\n4\n51 69 102 127 233 295 350 388 417 466 469 523 553 587 720 739 801 855 926 954\n"' do
    io = IO.popen("ruby typical90/001.rb", "w+")
    io.puts("20 1000\n4\n51 69 102 127 233 295 350 388 417 466 469 523 553 587 720 739 801 855 926 954\n")
    io.close_write
    expect(io.readlines.join).to eq("170\n")
  end

end
