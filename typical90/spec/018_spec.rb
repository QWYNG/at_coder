RSpec.describe 'test' do
  it 'test with "4\n2 1 1\n4\n0\n1\n2\n3\n"' do
    io = IO.popen("ruby typical90/018.rb", "w+")
    io.puts("4\n2 1 1\n4\n0\n1\n2\n3\n")
    io.close_write
    expect(io.readlines.join).to eq("0.000000000000\n24.094842552111\n54.735610317245\n45.000000000000\n")
  end

  it 'test with "5121\n312000000 4123 3314\n6\n123\n12\n445\n4114\n42\n1233\n"' do
    io = IO.popen("ruby typical90/018.rb", "w+")
    io.puts("5121\n312000000 4123 3314\n6\n123\n12\n445\n4114\n42\n1233\n")
    io.close_write
    expect(io.readlines.join).to eq("4.322765775902\n0.421184234768\n15.640867693969\n35.396039162484\n1.475665637902\n43.338582976959\n")
  end

end
