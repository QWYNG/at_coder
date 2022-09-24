RSpec.describe 'test' do
  it 'test with "2 2\n"' do
    io = IO.popen("ruby typical90/090.rb", "w+")
    io.puts("2 2\n")
    io.close_write
    expect(io.readlines.join).to eq("8\n")
  end

  it 'test with "17 29\n"' do
    io = IO.popen("ruby typical90/090.rb", "w+")
    io.puts("17 29\n")
    io.close_write
    expect(io.readlines.join).to eq("263173793\n")
  end

  it 'test with "2718 2818\n"' do
    io = IO.popen("ruby typical90/090.rb", "w+")
    io.puts("2718 2818\n")
    io.close_write
    expect(io.readlines.join).to eq("393799986\n")
  end

  it 'test with "28593 1\n"' do
    io = IO.popen("ruby typical90/090.rb", "w+")
    io.puts("28593 1\n")
    io.close_write
    expect(io.readlines.join).to eq("365728740\n")
  end

  it 'test with "869120 1001\n"' do
    io = IO.popen("ruby typical90/090.rb", "w+")
    io.puts("869120 1001\n")
    io.close_write
    expect(io.readlines.join).to eq("967393022\n")
  end

end
