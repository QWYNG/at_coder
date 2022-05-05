RSpec.describe 'test' do
  it 'test with "3 3\n1 1 1\n1 1 1\n1 1 1\n"' do
    io = IO.popen("ruby math-and-algorithm/067.rb", "w+")
    io.puts("3 3\n1 1 1\n1 1 1\n1 1 1\n")
    io.close_write
    expect(io.readlines.join).to eq("5 5 5\n5 5 5\n5 5 5\n")
  end

  it 'test with "4 4\n3 1 4 1\n5 9 2 6\n5 3 5 8\n9 7 9 3\n"' do
    io = IO.popen("ruby math-and-algorithm/067.rb", "w+")
    io.puts("4 4\n3 1 4 1\n5 9 2 6\n5 3 5 8\n9 7 9 3\n")
    io.close_write
    expect(io.readlines.join).to eq("28 28 25 26\n39 33 40 34\n38 38 36 31\n41 41 39 43\n")
  end

  it 'test with "2 10\n31 41 59 26 53 58 97 93 23 84\n62 64 33 83 27 95 2 88 41 97\n"' do
    io = IO.popen("ruby math-and-algorithm/067.rb", "w+")
    io.puts("2 10\n31 41 59 26 53 58 97 93 23 84\n62 64 33 83 27 95 2 88 41 97\n")
    io.close_write
    expect(io.readlines.join).to eq("627 629 598 648 592 660 567 653 606 662\n623 633 651 618 645 650 689 685 615 676\n")
  end

  it 'test with "10 10\n83 86 77 65 93 85 86 92 99 71\n62 77 90 59 63 76 90 76 72 86\n61 68 67 79 82 80 62 73 67 85\n79 52 72 58 69 67 93 56 61 92\n79 73 71 69 84 87 98 74 65 70\n63 76 91 80 56 73 62 70 96 81\n55 75 84 77 86 55 96 79 63 57\n74 95 82 95 64 67 84 64 93 50\n87 58 76 78 88 84 53 51 54 99\n82 60 76 68 89 62 76 86 94 89\n"' do
    io = IO.popen("ruby math-and-algorithm/067.rb", "w+")
    io.puts("10 10\n83 86 77 65 93 85 86 92 99 71\n62 77 90 59 63 76 90 76 72 86\n61 68 67 79 82 80 62 73 67 85\n79 52 72 58 69 67 93 56 61 92\n79 73 71 69 84 87 98 74 65 70\n63 76 91 80 56 73 62 70 96 81\n55 75 84 77 86 55 96 79 63 57\n74 95 82 95 64 67 84 64 93 50\n87 58 76 78 88 84 53 51 54 99\n82 60 76 68 89 62 76 86 94 89\n")
    io.close_write
    expect(io.readlines.join).to eq("1479 1471 1546 1500 1518 1488 1551 1466 1502 1546\n1414 1394 1447 1420 1462 1411 1461 1396 1443 1445\n1388 1376 1443 1373 1416 1380 1462 1372 1421 1419\n1345 1367 1413 1369 1404 1368 1406 1364 1402 1387\n1416 1417 1485 1429 1460 1419 1472 1417 1469 1480\n1410 1392 1443 1396 1466 1411 1486 1399 1416 1447\n1397 1372 1429 1378 1415 1408 1431 1369 1428 1450\n1419 1393 1472 1401 1478 1437 1484 1425 1439 1498\n1366 1390 1438 1378 1414 1380 1475 1398 1438 1409\n1425 1442 1492 1442 1467 1456 1506 1417 1452 1473\n")
  end

end
