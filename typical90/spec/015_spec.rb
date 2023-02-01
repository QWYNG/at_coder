RSpec.describe 'test' do
  it 'test with "1\n"' do
    io = IO.popen("ruby typical90/015.rb", "w+")
    io.puts("1\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "2\n"' do
    io = IO.popen("ruby typical90/015.rb", "w+")
    io.puts("2\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n2\n")
  end

  it 'test with "3\n"' do
    io = IO.popen("ruby typical90/015.rb", "w+")
    io.puts("3\n")
    io.close_write
    expect(io.readlines.join).to eq("7\n4\n3\n")
  end

  it 'test with "4\n"' do
    io = IO.popen("ruby typical90/015.rb", "w+")
    io.puts("4\n")
    io.close_write
    expect(io.readlines.join).to eq("15\n7\n5\n4\n")
  end

  it 'test with "7\n"' do
    io = IO.popen("ruby typical90/015.rb", "w+")
    io.puts("7\n")
    io.close_write
    expect(io.readlines.join).to eq("127\n33\n18\n13\n10\n8\n7\n")
  end

  it 'test with "20\n"' do
    io = IO.popen("ruby typical90/015.rb", "w+")
    io.puts("20\n")
    io.close_write
    expect(io.readlines.join).to eq("1048575\n17710\n2744\n906\n430\n250\n167\n118\n90\n75\n65\n56\n48\n41\n35\n30\n26\n23\n21\n20\n")
  end

  it 'test with "50\n"' do
    io = IO.popen("ruby typical90/015.rb", "w+")
    io.puts("50\n")
    io.close_write
    expect(io.readlines.join).to eq("898961330\n951279874\n262271567\n14341526\n1985602\n466851\n153365\n63191\n30623\n16687\n9987\n6453\n4354\n3070\n2290\n1790\n1427\n1138\n910\n735\n605\n512\n448\n405\n375\n350\n326\n303\n281\n260\n240\n221\n203\n186\n170\n155\n141\n128\n116\n105\n95\n86\n78\n71\n65\n60\n56\n53\n51\n50\n")
  end

end
