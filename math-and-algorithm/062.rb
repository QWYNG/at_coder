n, k = gets.split(' ').map(&:to_i)

towns = gets.split(' ').map(&:to_i)

count = 0
gone = {}
dis = 1

if n >= k
    loop do
        count += 1
        dis = towns[dis - 1]

        if k == count
            puts dis
            exit
        end
    end
end


while !gone[dis]
    gone[dis] = count
    count += 1
    dis = towns[dis - 1]    
end

steps = (k - gone[dis]) % (count - gone[dis])

steps.times do 
    dis = towns[dis - 1]
end

puts dis

