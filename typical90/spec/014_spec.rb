RSpec.describe 'test' do
  it 'test with "1\n869\n120\n"' do
    io = IO.popen("ruby typical90/014.rb", "w+")
    io.puts("1\n869\n120\n")
    io.close_write
    expect(io.readlines.join).to eq("749\n")
  end

  it 'test with "6\n8 6 9 1 2 0\n1 5 7 2 3 9\n"' do
    io = IO.popen("ruby typical90/014.rb", "w+")
    io.puts("6\n8 6 9 1 2 0\n1 5 7 2 3 9\n")
    io.close_write
    expect(io.readlines.join).to eq("5\n")
  end

  it 'test with "10\n31 41 59 26 53 58 97 93 23 84\n17 32 5 8 7 56 88 77 29 35\n"' do
    io = IO.popen("ruby typical90/014.rb", "w+")
    io.puts("10\n31 41 59 26 53 58 97 93 23 84\n17 32 5 8 7 56 88 77 29 35\n")
    io.close_write
    expect(io.readlines.join).to eq("211\n")
  end

  it 'test with "20\n804289382 846930886 681692776 714636914 957747792 424238335 719885386 649760491 596516649 189641420 25202361 350490026 783368690 102520058 44897761 967513925 365180539 540383425 304089172 303455735\n35005211 521595368 294702567 726956428 336465782 861021530 278722862 233665123 145174065 468703135 101513928 801979801 315634021 635723058 369133068 125898166 59961392 89018454 628175011 656478041\n"' do
    io = IO.popen("ruby typical90/014.rb", "w+")
    io.puts("20\n804289382 846930886 681692776 714636914 957747792 424238335 719885386 649760491 596516649 189641420 25202361 350490026 783368690 102520058 44897761 967513925 365180539 540383425 304089172 303455735\n35005211 521595368 294702567 726956428 336465782 861021530 278722862 233665123 145174065 468703135 101513928 801979801 315634021 635723058 369133068 125898166 59961392 89018454 628175011 656478041\n")
    io.close_write
    expect(io.readlines.join).to eq("2736647674\n")
  end

end
