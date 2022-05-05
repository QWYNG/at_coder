RSpec.describe 'test' do
  it 'test with "// \u7B54\u3048\u306E\u51FA\u529B\nfor (int i = 1; i <= N - 1; i++) {\n"' do
    io = IO.popen("ruby math-and-algorithm/039.rb", "w+")
    io.puts("// \u7B54\u3048\u306E\u51FA\u529B\nfor (int i = 1; i <= N - 1; i++) {\n")
    io.close_write
    expect(io.readlines.join).to eq("// \u7B54\u3048\u306E\u51FA\u529B\nfor (int i = 2; i <= N; i++) {\n")
  end

  it 'test with "5 3\n1 2 3\n2 5 4\n2 4 1\n"' do
    io = IO.popen("ruby math-and-algorithm/039.rb", "w+")
    io.puts("5 3\n1 2 3\n2 5 4\n2 4 1\n")
    io.close_write
    expect(io.readlines.join).to eq("<>=>\n")
  end

  it 'test with "10 10\n1 1 1\n6 7 28\n3 5 4096\n6 10 2000\n1 10 10000\n2 8 2\n10 10 2\n1 2 8000\n6 7 20\n6 8 2048\n"' do
    io = IO.popen("ruby math-and-algorithm/039.rb", "w+")
    io.puts("10 10\n1 1 1\n6 7 28\n3 5 4096\n6 10 2000\n1 10 10000\n2 8 2\n10 10 2\n1 2 8000\n6 7 20\n6 8 2048\n")
    io.close_write
    expect(io.readlines.join).to eq("<>====>><\n")
  end

end
