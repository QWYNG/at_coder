RSpec.describe 'test' do
  it 'test with "6 3\n2 5\n1 4\n1 3\n"' do
    io = IO.popen("ruby typical90/017.rb", "w+")
    io.puts("6 3\n2 5\n1 4\n1 3\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "250 10\n13 218\n17 99\n24 180\n53 115\n96 97\n111 158\n124 164\n135 227\n158 177\n204 224\n"' do
    io = IO.popen("ruby typical90/017.rb", "w+")
    io.puts("250 10\n13 218\n17 99\n24 180\n53 115\n96 97\n111 158\n124 164\n135 227\n158 177\n204 224\n")
    io.close_write
    expect(io.readlines.join).to eq("10\n")
  end

  it 'test with "100 10\n1 2\n1 3\n1 4\n1 5\n1 6\n1 7\n1 8\n1 9\n1 10\n1 11\n"' do
    io = IO.popen("ruby typical90/017.rb", "w+")
    io.puts("100 10\n1 2\n1 3\n1 4\n1 5\n1 6\n1 7\n1 8\n1 9\n1 10\n1 11\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "100 10\n1 100\n2 99\n3 98\n4 97\n5 96\n6 95\n7 94\n8 93\n9 92\n10 91\n"' do
    io = IO.popen("ruby typical90/017.rb", "w+")
    io.puts("100 10\n1 100\n2 99\n3 98\n4 97\n5 96\n6 95\n7 94\n8 93\n9 92\n10 91\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "1000 40\n12 43\n23 59\n32 118\n44 751\n68 136\n70 168\n85 328\n88 809\n92 981\n95 540\n98 772\n98 903\n125 896\n173 737\n199 325\n212 369\n227 587\n230 374\n287 442\n306 926\n314 858\n316 371\n318 493\n337 506\n384 887\n387 493\n394 457\n404 652\n414 527\n422 920\n441 730\n445 620\n468 602\n482 676\n568 857\n587 966\n653 757\n710 928\n764 927\n778 916\n"' do
    io = IO.popen("ruby typical90/017.rb", "w+")
    io.puts("1000 40\n12 43\n23 59\n32 118\n44 751\n68 136\n70 168\n85 328\n88 809\n92 981\n95 540\n98 772\n98 903\n125 896\n173 737\n199 325\n212 369\n227 587\n230 374\n287 442\n306 926\n314 858\n316 371\n318 493\n337 506\n384 887\n387 493\n394 457\n404 652\n414 527\n422 920\n441 730\n445 620\n468 602\n482 676\n568 857\n587 966\n653 757\n710 928\n764 927\n778 916\n")
    io.close_write
    expect(io.readlines.join).to eq("229\n")
  end

end
