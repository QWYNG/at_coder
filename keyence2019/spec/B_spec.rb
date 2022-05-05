RSpec.describe 'test' do
  it 'test with "keyofscience\n"' do
    io = IO.popen("ruby keyence2019/B.rb", "w+")
    io.puts("keyofscience\n")
    io.close_write
    expect(io.readlines.join).to eq("YES\n")
  end

  it 'test with "mpyszsbznf\n"' do
    io = IO.popen("ruby keyence2019/B.rb", "w+")
    io.puts("mpyszsbznf\n")
    io.close_write
    expect(io.readlines.join).to eq("NO\n")
  end

  it 'test with "ashlfyha\n"' do
    io = IO.popen("ruby keyence2019/B.rb", "w+")
    io.puts("ashlfyha\n")
    io.close_write
    expect(io.readlines.join).to eq("NO\n")
  end

  it 'test with "keyence\n"' do
    io = IO.popen("ruby keyence2019/B.rb", "w+")
    io.puts("keyence\n")
    io.close_write
    expect(io.readlines.join).to eq("YES\n")
  end


  it 'test with "keykeyenceence\n"' do
    io = IO.popen("ruby keyence2019/B.rb", "w+")
    io.puts("keykeyenceence\n")
    io.close_write
    expect(io.readlines.join).to eq("YES\n")
  end

  it 'test with "encekey\n"' do
    io = IO.popen("ruby keyence2019/B.rb", "w+")
    io.puts("encekey\n")
    io.close_write
    expect(io.readlines.join).to eq("NO\n")
  end

  it 'test with "key\n"' do
    io = IO.popen("ruby keyence2019/B.rb", "w+")
    io.puts("key\n")
    io.close_write
    expect(io.readlines.join).to eq("NO\n")
  end

  it 'test with "k\n"' do
    io = IO.popen("ruby keyence2019/B.rb", "w+")
    io.puts("k\n")
    io.close_write
    expect(io.readlines.join).to eq("NO\n")
  end

  it 'test with "keyenceii\n"' do
    io = IO.popen("ruby keyence2019/B.rb", "w+")
    io.puts("keyenceii\n")
    io.close_write
    expect(io.readlines.join).to eq("YES\n")
  end

  it 'test with "keyencekeyenceence\n"' do
    io = IO.popen("ruby keyence2019/B.rb", "w+")
    io.puts("keyencekeyenceence\n")
    io.close_write
    expect(io.readlines.join).to eq("YES\n")
  end

  it 'test with "iiiikeyence\n"' do
    io = IO.popen("ruby keyence2019/B.rb", "w+")
    io.puts("iiiikeyence\n")
    io.close_write
    expect(io.readlines.join).to eq("YES\n")
  end

  it 'test with "kiiienceey\n"' do
    io = IO.popen("ruby keyence2019/B.rb", "w+")
    io.puts("kiiienceey\n")
    io.close_write
    expect(io.readlines.join).to eq("NO\n")
  end

  it 'test with "kkkeyence\n"' do
    io = IO.popen("ruby keyence2019/B.rb", "w+")
    io.puts("kkkeyence\n")
    io.close_write
    expect(io.readlines.join).to eq("YES\n")
  end

  it 'test with "nnnnkeynnnnence\n"' do
    io = IO.popen("ruby keyence2019/B.rb", "w+")
    io.puts("nnnnkeynnnnence\n")
    io.close_write
    expect(io.readlines.join).to eq("NO\n")
  end

  it 'test with "keyenceenceence\n"' do
    io = IO.popen("ruby keyence2019/B.rb", "w+")
    io.puts("keyenceenceence\n")
    io.close_write
    expect(io.readlines.join).to eq("YES\n")
  end


  it 'test with "encekeyenceenceence\n"' do
    io = IO.popen("ruby keyence2019/B.rb", "w+")
    io.puts("encekeyenceenceence\n")
    io.close_write
    expect(io.readlines.join).to eq("NO\n")
  end
end
