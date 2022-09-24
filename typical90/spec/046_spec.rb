RSpec.describe 'test' do
  it 'test with "3\n10 13 93\n5 27 35\n55 28 52\n"' do
    io = IO.popen("ruby typical90/046.rb", "w+")
    io.puts("3\n10 13 93\n5 27 35\n55 28 52\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "3\n10 56 102\n16 62 108\n20 66 112\n"' do
    io = IO.popen("ruby typical90/046.rb", "w+")
    io.puts("3\n10 56 102\n16 62 108\n20 66 112\n")
    io.close_write
    expect(io.readlines.join).to eq("27\n")
  end

  it 'test with "20\n238 395 46 238 264 114 354 52 324 14 472 64 307 280 209 24 165 194 179 248\n270 83 377 332 173 21 362 75 66 342 229 117 124 481 48 235 376 13 420 74\n175 427 76 278 486 169 311 47 348 225 41 482 355 356 263 95 170 156 340 289\n"' do
    io = IO.popen("ruby typical90/046.rb", "w+")
    io.puts("20\n238 395 46 238 264 114 354 52 324 14 472 64 307 280 209 24 165 194 179 248\n270 83 377 332 173 21 362 75 66 342 229 117 124 481 48 235 376 13 420 74\n175 427 76 278 486 169 311 47 348 225 41 482 355 356 263 95 170 156 340 289\n")
    io.close_write
    expect(io.readlines.join).to eq("183\n")
  end

end
