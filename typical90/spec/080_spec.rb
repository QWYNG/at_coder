RSpec.describe 'test' do
  it 'test with "4 3\n1 3 4 5\n"' do
    io = IO.popen("ruby typical90/080.rb", "w+")
    io.puts("4 3\n1 3 4 5\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "5 21\n1050624 32772 493952 144 869120\n"' do
    io = IO.popen("ruby typical90/080.rb", "w+")
    io.puts("5 21\n1050624 32772 493952 144 869120\n")
    io.close_write
    expect(io.readlines.join).to eq("869120\n")
  end

  it 'test with "20 60\n216181578206878016 81348488767472704 26388280246272 281543729742896 72127981178847488 2199108462600 585610888171487234 22027813536776 567459673280576 146648462866649600 144484898860704776 576471786208755714 4398621196432 144141576657960976 81069330992726040 360851057582278674 17859112 11570646360064 144115206396936193 1702052723957760\n"' do
    io = IO.popen("ruby typical90/080.rb", "w+")
    io.puts("20 60\n216181578206878016 81348488767472704 26388280246272 281543729742896 72127981178847488 2199108462600 585610888171487234 22027813536776 567459673280576 146648462866649600 144484898860704776 576471786208755714 4398621196432 144141576657960976 81069330992726040 360851057582278674 17859112 11570646360064 144115206396936193 1702052723957760\n")
    io.close_write
    expect(io.readlines.join).to eq("977902973481140224\n")
  end

end
