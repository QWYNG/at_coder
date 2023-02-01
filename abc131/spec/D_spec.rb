RSpec.describe 'test' do
  it 'test with "5\n2 4\n1 9\n1 8\n4 9\n3 12\n"' do
    io = IO.popen("ruby abc131/D.rb", "w+")
    io.puts("5\n2 4\n1 9\n1 8\n4 9\n3 12\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "3\n334 1000\n334 1000\n334 1000\n"' do
    io = IO.popen("ruby abc131/D.rb", "w+")
    io.puts("3\n334 1000\n334 1000\n334 1000\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

  it 'test with "30\n384 8895\n1725 9791\n170 1024\n4 11105\n2 6\n578 1815\n702 3352\n143 5141\n1420 6980\n24 1602\n849 999\n76 7586\n85 5570\n444 4991\n719 11090\n470 10708\n1137 4547\n455 9003\n110 9901\n15 8578\n368 3692\n104 1286\n3 4\n366 12143\n7 6649\n610 2374\n152 7324\n4 7042\n292 11386\n334 5720\n"' do
    io = IO.popen("ruby abc131/D.rb", "w+")
    io.puts("30\n384 8895\n1725 9791\n170 1024\n4 11105\n2 6\n578 1815\n702 3352\n143 5141\n1420 6980\n24 1602\n849 999\n76 7586\n85 5570\n444 4991\n719 11090\n470 10708\n1137 4547\n455 9003\n110 9901\n15 8578\n368 3692\n104 1286\n3 4\n366 12143\n7 6649\n610 2374\n152 7324\n4 7042\n292 11386\n334 5720\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

end
